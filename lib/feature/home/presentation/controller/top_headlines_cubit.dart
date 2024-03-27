import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entity/top_headlines.dart';
import '../../domain/usecase/get_top_headlines.dart';

part 'top_headlines_cubit.freezed.dart';
part 'top_headlines_state.dart';

class TopHeadlinesCubit extends Cubit<TopHeadlinesState> {
  final GetTopHeadlines _getTopHeadlines;

  TopHeadlinesCubit(this._getTopHeadlines)
      : super(const TopHeadlinesState.initial());

  void getTopHeadlines() async {
    emit(const TopHeadlinesState.loading());
    final result = await _getTopHeadlines(
      const TopHeadLinesParams(
        category: 'general',
        pageSize: 10,
      ),
    );
    result.fold(
      (l) => emit(TopHeadlinesState.error(Exception(l))),
      (r) => emit(TopHeadlinesState.success(
        // take out data if image == null
        r.where((e) => e.urlToImage != null).toList(),
      )),
    );
  }
}
