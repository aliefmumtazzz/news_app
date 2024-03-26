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
      ..registerFactory<GetExplore>(
        () => GetExplore(injector()),
      )
      // cubit
      ..registerLazySingleton<TopHeadlinesCubit>(
        () => TopHeadlinesCubit(injector()),
      )
      ..registerLazySingleton<ExploreCubit>(
        () => ExploreCubit(injector()),
      );
  }
}
