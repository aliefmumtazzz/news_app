import 'package:get_it/get_it.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import 'core/util/dio_service_util.dart';
import 'core/util/internet_connection_checker_util.dart';
import 'feature/home/data/datasource/home_remote_datasource.dart';
import 'feature/home/data/repository/home_repository_impl.dart';
import 'feature/home/domain/repository/home_repository.dart';
import 'feature/home/domain/usecase/get_explore.dart';
import 'feature/home/domain/usecase/get_top_headlines.dart';
import 'feature/home/presentation/controller/explore_cubit.dart';
import 'feature/home/presentation/controller/top_headlines_cubit.dart';

part 'injector.main.dart';
