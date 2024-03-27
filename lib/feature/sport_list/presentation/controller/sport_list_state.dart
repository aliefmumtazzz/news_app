part of 'sport_list_cubit.dart';

@freezed
class SportListState with _$SportListState {
  const factory SportListState.initial() = SportListInitialState;
  const factory SportListState.loading() = SportListLoadingState;
  const factory SportListState.success(List<Sport> data) =
      SportListSuccessState;
  const factory SportListState.error(Exception error) = SportListErrorState;
}
