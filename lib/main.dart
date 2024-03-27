import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'feature/home/presentation/controller/sport_cubit.dart';
import 'feature/home/presentation/controller/top_headlines_cubit.dart';
import 'feature/home/presentation/page/home_page.dart';
import 'feature/sport_list/presentation/controller/sport_list_cubit.dart';
import 'injector.dart';

void mainApp() {
  runZonedGuarded(() async {
    // start flutter_native_splash
    FlutterNativeSplash.preserve(
      widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
    );

    Injector.init();

    // stop flutter_native_splash
    FlutterNativeSplash.remove();

    runApp(const NewsApp());
  }, (error, stack) {
    debugPrint('$error');
  });
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => injector.get<TopHeadlinesCubit>()),
        BlocProvider(create: (_) => injector.get<SportCubit>()),
        BlocProvider(create: (_) => injector.get<SportListCubit>()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(320, 568),
        minTextAdapt: true,
        builder: (_, __) => MaterialApp(
          title: 'News App',
          theme: ThemeData(useMaterial3: false),
          home: const HomePage(),
        ),
      ),
    );
  }
}
