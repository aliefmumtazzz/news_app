import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/usecase/usecase.dart';
import '../../domain/entity/top_headlines.dart';
import '../../domain/usecase/get_explore.dart';

part 'explore_cubit.freezed.dart';
part 'explore_state.dart';

class ExploreCubit extends Cubit<ExploreState> {
  final GetExplore _getExplore;

  ExploreCubit(this._getExplore) : super(const ExploreState.initial());

  void getExplore() async {
    final result = await _getExplore(NoParams());

    result.fold(
      (l) => emit(ExploreState.error(Exception(l))),
      (r) => emit(ExploreState.success(
        // take out data if image == null
        r.where((e) => e.urlToImage != null).toList(),
      )),
    );
  }
}
