part of 'explore_cubit.dart';

@freezed
class ExploreState with _$ExploreState {
  const factory ExploreState.initial() = ExploreInitialState;
  const factory ExploreState.loading() = ExploreLoadingState;
  const factory ExploreState.success(List<TopHeadlines> data) =
      ExploreSuccessState;
  const factory ExploreState.error(Exception error) = ExploreErrorState;
}
