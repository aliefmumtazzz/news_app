part of 'sport_cubit.dart';

@freezed
class SportState with _$SportState {
  const factory SportState.initial() = SportInitialState;
  const factory SportState.loading() = SportLoadingState;
  const factory SportState.success(List<TopHeadlines> data) = SportSuccessState;
  const factory SportState.error(Exception error) = SportErrorState;
}
