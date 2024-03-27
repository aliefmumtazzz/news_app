part of 'injector.dart';

final injector = GetIt.instance;

class Injector {
  const Injector._();

  static Future<void> init() async {
    // init dotenv
    await dotenv.load(fileName: '.env');

    // init base dio service
    injector.registerLazySingleton<BaseService>(() => BaseService.create());

    // core
    injector.registerFactory<InternetConnection>(
      () => InternetConnection(),
    );
    injector.registerFactory<ConnectionChecker>(
      () => ConnectionCheckerImpl(
        injector(),
      ),
    );

    _initHome();
    _initSport();
  }

  static void _initHome() {
    injector
      // datasource
      ..registerFactory<HomeRemoteDataSource>(
        () => HomeRemoteDateSourceImpl(injector()),
      )
      // repository
      ..registerFactory<HomeRepository>(
        () => HomeRepositoryImpl(injector(), injector()),
      )
      // usecase
      ..registerFactory<GetTopHeadlines>(
        () => GetTopHeadlines(injector()),
      )
      // cubit
      ..registerLazySingleton<TopHeadlinesCubit>(
        () => TopHeadlinesCubit(injector()),
      )
      ..registerLazySingleton<SportCubit>(
        () => SportCubit(injector()),
      );
  }

  static void _initSport() {
    injector
      // datasource
      ..registerFactory<SportRemoteDatasource>(
        () => SportRemoteDatasourceImpl(injector()),
      )
      // repository
      ..registerFactory<SportRepository>(
        () => SportRepositoryImpl(injector(), injector()),
      )
      // usecase
      ..registerFactory<GetSport>(
        () => GetSport(injector()),
      )
      // cubit
      ..registerLazySingleton<SportListCubit>(
        () => SportListCubit(injector()),
      );
  }
}
