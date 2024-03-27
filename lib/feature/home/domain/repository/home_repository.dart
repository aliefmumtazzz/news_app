import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failure.dart';
import '../entity/top_headlines.dart';

abstract interface class HomeRepository {
  Future<Either<Failure, List<TopHeadlines>>> getTopHeadlines({
    required String category,
    required int pageSize,
  });
}
