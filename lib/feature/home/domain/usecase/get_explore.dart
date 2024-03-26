import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failure.dart';

import '../../../../core/usecase/usecase.dart';
import '../entity/top_headlines.dart';
import '../repository/home_repository.dart';

class GetExplore implements UseCase<List<TopHeadlines>, NoParams> {
  final HomeRepository _homeRepository;

  const GetExplore(this._homeRepository);

  @override
  Future<Either<Failure, List<TopHeadlines>>> call(NoParams params) async {
    return await _homeRepository.getExplore();
  }
}
