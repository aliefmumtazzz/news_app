// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sport_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SportListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Sport> data) success,
    required TResult Function(Exception error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Sport> data)? success,
    TResult? Function(Exception error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Sport> data)? success,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SportListInitialState value) initial,
    required TResult Function(SportListLoadingState value) loading,
    required TResult Function(SportListSuccessState value) success,
    required TResult Function(SportListErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SportListInitialState value)? initial,
    TResult? Function(SportListLoadingState value)? loading,
    TResult? Function(SportListSuccessState value)? success,
    TResult? Function(SportListErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SportListInitialState value)? initial,
    TResult Function(SportListLoadingState value)? loading,
    TResult Function(SportListSuccessState value)? success,
    TResult Function(SportListErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SportListStateCopyWith<$Res> {
  factory $SportListStateCopyWith(
          SportListState value, $Res Function(SportListState) then) =
      _$SportListStateCopyWithImpl<$Res, SportListState>;
}

/// @nodoc
class _$SportListStateCopyWithImpl<$Res, $Val extends SportListState>
    implements $SportListStateCopyWith<$Res> {
  _$SportListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SportListInitialStateImplCopyWith<$Res> {
  factory _$$SportListInitialStateImplCopyWith(
          _$SportListInitialStateImpl value,
          $Res Function(_$SportListInitialStateImpl) then) =
      __$$SportListInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SportListInitialStateImplCopyWithImpl<$Res>
    extends _$SportListStateCopyWithImpl<$Res, _$SportListInitialStateImpl>
    implements _$$SportListInitialStateImplCopyWith<$Res> {
  __$$SportListInitialStateImplCopyWithImpl(_$SportListInitialStateImpl _value,
      $Res Function(_$SportListInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SportListInitialStateImpl implements SportListInitialState {
  const _$SportListInitialStateImpl();

  @override
  String toString() {
    return 'SportListState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SportListInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Sport> data) success,
    required TResult Function(Exception error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Sport> data)? success,
    TResult? Function(Exception error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Sport> data)? success,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SportListInitialState value) initial,
    required TResult Function(SportListLoadingState value) loading,
    required TResult Function(SportListSuccessState value) success,
    required TResult Function(SportListErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SportListInitialState value)? initial,
    TResult? Function(SportListLoadingState value)? loading,
    TResult? Function(SportListSuccessState value)? success,
    TResult? Function(SportListErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SportListInitialState value)? initial,
    TResult Function(SportListLoadingState value)? loading,
    TResult Function(SportListSuccessState value)? success,
    TResult Function(SportListErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SportListInitialState implements SportListState {
  const factory SportListInitialState() = _$SportListInitialStateImpl;
}

/// @nodoc
abstract class _$$SportListLoadingStateImplCopyWith<$Res> {
  factory _$$SportListLoadingStateImplCopyWith(
          _$SportListLoadingStateImpl value,
          $Res Function(_$SportListLoadingStateImpl) then) =
      __$$SportListLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SportListLoadingStateImplCopyWithImpl<$Res>
    extends _$SportListStateCopyWithImpl<$Res, _$SportListLoadingStateImpl>
    implements _$$SportListLoadingStateImplCopyWith<$Res> {
  __$$SportListLoadingStateImplCopyWithImpl(_$SportListLoadingStateImpl _value,
      $Res Function(_$SportListLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SportListLoadingStateImpl implements SportListLoadingState {
  const _$SportListLoadingStateImpl();

  @override
  String toString() {
    return 'SportListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SportListLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Sport> data) success,
    required TResult Function(Exception error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Sport> data)? success,
    TResult? Function(Exception error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Sport> data)? success,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SportListInitialState value) initial,
    required TResult Function(SportListLoadingState value) loading,
    required TResult Function(SportListSuccessState value) success,
    required TResult Function(SportListErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SportListInitialState value)? initial,
    TResult? Function(SportListLoadingState value)? loading,
    TResult? Function(SportListSuccessState value)? success,
    TResult? Function(SportListErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SportListInitialState value)? initial,
    TResult Function(SportListLoadingState value)? loading,
    TResult Function(SportListSuccessState value)? success,
    TResult Function(SportListErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SportListLoadingState implements SportListState {
  const factory SportListLoadingState() = _$SportListLoadingStateImpl;
}

/// @nodoc
abstract class _$$SportListSuccessStateImplCopyWith<$Res> {
  factory _$$SportListSuccessStateImplCopyWith(
          _$SportListSuccessStateImpl value,
          $Res Function(_$SportListSuccessStateImpl) then) =
      __$$SportListSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Sport> data});
}

/// @nodoc
class __$$SportListSuccessStateImplCopyWithImpl<$Res>
    extends _$SportListStateCopyWithImpl<$Res, _$SportListSuccessStateImpl>
    implements _$$SportListSuccessStateImplCopyWith<$Res> {
  __$$SportListSuccessStateImplCopyWithImpl(_$SportListSuccessStateImpl _value,
      $Res Function(_$SportListSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SportListSuccessStateImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Sport>,
    ));
  }
}

/// @nodoc

class _$SportListSuccessStateImpl implements SportListSuccessState {
  const _$SportListSuccessStateImpl(final List<Sport> data) : _data = data;

  final List<Sport> _data;
  @override
  List<Sport> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SportListState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SportListSuccessStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SportListSuccessStateImplCopyWith<_$SportListSuccessStateImpl>
      get copyWith => __$$SportListSuccessStateImplCopyWithImpl<
          _$SportListSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Sport> data) success,
    required TResult Function(Exception error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Sport> data)? success,
    TResult? Function(Exception error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Sport> data)? success,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SportListInitialState value) initial,
    required TResult Function(SportListLoadingState value) loading,
    required TResult Function(SportListSuccessState value) success,
    required TResult Function(SportListErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SportListInitialState value)? initial,
    TResult? Function(SportListLoadingState value)? loading,
    TResult? Function(SportListSuccessState value)? success,
    TResult? Function(SportListErrorState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SportListInitialState value)? initial,
    TResult Function(SportListLoadingState value)? loading,
    TResult Function(SportListSuccessState value)? success,
    TResult Function(SportListErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SportListSuccessState implements SportListState {
  const factory SportListSuccessState(final List<Sport> data) =
      _$SportListSuccessStateImpl;

  List<Sport> get data;
  @JsonKey(ignore: true)
  _$$SportListSuccessStateImplCopyWith<_$SportListSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SportListErrorStateImplCopyWith<$Res> {
  factory _$$SportListErrorStateImplCopyWith(_$SportListErrorStateImpl value,
          $Res Function(_$SportListErrorStateImpl) then) =
      __$$SportListErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception error});
}

/// @nodoc
class __$$SportListErrorStateImplCopyWithImpl<$Res>
    extends _$SportListStateCopyWithImpl<$Res, _$SportListErrorStateImpl>
    implements _$$SportListErrorStateImplCopyWith<$Res> {
  __$$SportListErrorStateImplCopyWithImpl(_$SportListErrorStateImpl _value,
      $Res Function(_$SportListErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SportListErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$SportListErrorStateImpl implements SportListErrorState {
  const _$SportListErrorStateImpl(this.error);

  @override
  final Exception error;

  @override
  String toString() {
    return 'SportListState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SportListErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SportListErrorStateImplCopyWith<_$SportListErrorStateImpl> get copyWith =>
      __$$SportListErrorStateImplCopyWithImpl<_$SportListErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Sport> data) success,
    required TResult Function(Exception error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Sport> data)? success,
    TResult? Function(Exception error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Sport> data)? success,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SportListInitialState value) initial,
    required TResult Function(SportListLoadingState value) loading,
    required TResult Function(SportListSuccessState value) success,
    required TResult Function(SportListErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SportListInitialState value)? initial,
    TResult? Function(SportListLoadingState value)? loading,
    TResult? Function(SportListSuccessState value)? success,
    TResult? Function(SportListErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SportListInitialState value)? initial,
    TResult Function(SportListLoadingState value)? loading,
    TResult Function(SportListSuccessState value)? success,
    TResult Function(SportListErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SportListErrorState implements SportListState {
  const factory SportListErrorState(final Exception error) =
      _$SportListErrorStateImpl;

  Exception get error;
  @JsonKey(ignore: true)
  _$$SportListErrorStateImplCopyWith<_$SportListErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
