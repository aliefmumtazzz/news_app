import 'package:fpdart/fpdart.dart';

import '../../../../core/constant/message.dart';
import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/util/internet_connection_checker_util.dart';
import '../../domain/entity/top_headlines.dart';

import '../../domain/repository/home_repository.dart';
import '../datasource/home_remote_datasource.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource _homeRemoteDataSource;
  final ConnectionChecker _connectionChecker;

  const HomeRepositoryImpl(this._connectionChecker, this._homeRemoteDataSource);

  @override
  Future<Either<Failure, List<TopHeadlines>>> getTopHeadlines() async {
    try {
      if (!await _connectionChecker.isConnected) {
        return left(Failure(MessageConstant.noInternetConnection));
      }

      final result = await _homeRemoteDataSource.getTopHeadlines();

      return right(result);
    } on ServerException catch (e) {
      throw left(Failure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<TopHeadlines>>> getExplore() async {
    try {
      if (!await _connectionChecker.isConnected) {
        return left(Failure(MessageConstant.noInternetConnection));
      }

      final result = await _homeRemoteDataSource.getExplore();

      return right(result);
    } on ServerException catch (e) {
      throw left(Failure(e.message));
    }
  }
}
