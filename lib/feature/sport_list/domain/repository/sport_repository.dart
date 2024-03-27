import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failure.dart';
import '../entity/sport.dart';

abstract interface class SportRepository {
  Future<Either<Failure, List<Sport>>> getSports();
}
