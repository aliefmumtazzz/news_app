part of 'top_headlines_cubit.dart';

@freezed
class TopHeadlinesState with _$TopHeadlinesState {
  const factory TopHeadlinesState.initial() = TopHeadlinesInitialState;
  const factory TopHeadlinesState.loading() = TopHeadlinesLoadingState;
  const factory TopHeadlinesState.success(List<TopHeadlines> data) =
      TopHeadlinesSuccessState;
  const factory TopHeadlinesState.error(Exception error) =
      TopHeadlinesErrorState;
}
