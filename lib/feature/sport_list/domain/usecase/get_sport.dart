import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failure.dart';

import '../../../../core/usecase/usecase.dart';
import '../entity/sport.dart';
import '../repository/sport_repository.dart';

class GetSport implements UseCase<List<Sport>, NoParams> {
  final SportRepository _sportRepository;

  const GetSport(this._sportRepository);

  @override
  Future<Either<Failure, List<Sport>>> call(NoParams noParams) async {
    return await _sportRepository.getSports();
  }
}
