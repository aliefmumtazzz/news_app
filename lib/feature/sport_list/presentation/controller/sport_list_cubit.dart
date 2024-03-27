import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/usecase/usecase.dart';
import '../../domain/entity/sport.dart';
import '../../domain/usecase/get_sport.dart';

part 'sport_list_cubit.freezed.dart';
part 'sport_list_state.dart';

class SportListCubit extends Cubit<SportListState> {
  final GetSport _getSport;

  SportListCubit(this._getSport) : super(const SportListState.initial());

  void getSports() async {
    emit(const SportListState.loading());
    final result = await _getSport(NoParams());

    result.fold(
      (l) => emit(SportListState.error(Exception(l))),
      (r) {
        emit(SportListState.success(
          r.where((e) => e.urlToImage != null).toList(),
        ));
      },
    );
  }
}
