import 'package:fpdart/fpdart.dart';

import '../../../../core/constant/message.dart';
import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/util/internet_connection_checker_util.dart';
import '../../domain/entity/sport.dart';

import '../../domain/repository/sport_repository.dart';
import '../datasource/sport_remote_datasource.dart';

class SportRepositoryImpl implements SportRepository {
  final SportRemoteDatasource _sportRemoteDatasource;
  final ConnectionChecker _connectionChecker;

  const SportRepositoryImpl(
    this._connectionChecker,
    this._sportRemoteDatasource,
  );

  @override
  Future<Either<Failure, List<Sport>>> getSports() async {
    try {
      if (!await _connectionChecker.isConnected) {
        return left(Failure(MessageConstant.noInternetConnection));
      }

      final result = await _sportRemoteDatasource.getSports();

      return right(result);
    } on ServerException catch (e) {
      throw left(Failure(e.message));
    }
  }
}
