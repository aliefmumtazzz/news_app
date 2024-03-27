import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/top_headlines.dart';
import '../../domain/usecase/get_top_headlines.dart';

part 'sport_cubit.freezed.dart';
part 'sport_state.dart';

class SportCubit extends Cubit<SportState> {
  final GetTopHeadlines _getTopHeadlines;

  SportCubit(this._getTopHeadlines) : super(const SportState.initial());

  void getSport() async {
    final result = await _getTopHeadlines(
      const TopHeadLinesParams(
        category: 'sport',
        pageSize: 6,
      ),
    );

    result.fold(
      (l) => emit(SportState.error(Exception(l))),
      (r) => emit(SportState.success(
        // take out data if image == null
        r.where((e) => e.urlToImage != null).toList(),
      )),
    );
  }
}
