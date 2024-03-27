import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failure.dart';

import '../../../../core/usecase/usecase.dart';
import '../entity/top_headlines.dart';
import '../repository/home_repository.dart';

class GetTopHeadlines
    implements UseCase<List<TopHeadlines>, TopHeadLinesParams> {
  final HomeRepository _homeRepository;

  const GetTopHeadlines(this._homeRepository);

  @override
  Future<Either<Failure, List<TopHeadlines>>> call(
    TopHeadLinesParams params,
  ) async {
    return await _homeRepository.getTopHeadlines(
      category: params.category,
      pageSize: params.pageSize,
    );
  }
}

class TopHeadLinesParams {
  final String category;
  final int pageSize;
  const TopHeadLinesParams({required this.category, required this.pageSize});
}
