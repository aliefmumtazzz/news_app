// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'explore_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExploreState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TopHeadlines> data) success,
    required TResult Function(Exception error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TopHeadlines> data)? success,
    TResult? Function(Exception error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TopHeadlines> data)? success,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExploreInitialState value) initial,
    required TResult Function(ExploreLoadingState value) loading,
    required TResult Function(ExploreSuccessState value) success,
    required TResult Function(ExploreErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExploreInitialState value)? initial,
    TResult? Function(ExploreLoadingState value)? loading,
    TResult? Function(ExploreSuccessState value)? success,
    TResult? Function(ExploreErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExploreInitialState value)? initial,
    TResult Function(ExploreLoadingState value)? loading,
    TResult Function(ExploreSuccessState value)? success,
    TResult Function(ExploreErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExploreStateCopyWith<$Res> {
  factory $ExploreStateCopyWith(
          ExploreState value, $Res Function(ExploreState) then) =
      _$ExploreStateCopyWithImpl<$Res, ExploreState>;
}

/// @nodoc
class _$ExploreStateCopyWithImpl<$Res, $Val extends ExploreState>
    implements $ExploreStateCopyWith<$Res> {
  _$ExploreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ExploreInitialStateImplCopyWith<$Res> {
  factory _$$ExploreInitialStateImplCopyWith(_$ExploreInitialStateImpl value,
          $Res Function(_$ExploreInitialStateImpl) then) =
      __$$ExploreInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExploreInitialStateImplCopyWithImpl<$Res>
    extends _$ExploreStateCopyWithImpl<$Res, _$ExploreInitialStateImpl>
    implements _$$ExploreInitialStateImplCopyWith<$Res> {
  __$$ExploreInitialStateImplCopyWithImpl(_$ExploreInitialStateImpl _value,
      $Res Function(_$ExploreInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExploreInitialStateImpl implements ExploreInitialState {
  const _$ExploreInitialStateImpl();

  @override
  String toString() {
    return 'ExploreState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExploreInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TopHeadlines> data) success,
    required TResult Function(Exception error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TopHeadlines> data)? success,
    TResult? Function(Exception error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TopHeadlines> data)? success,
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
    required TResult Function(ExploreInitialState value) initial,
    required TResult Function(ExploreLoadingState value) loading,
    required TResult Function(ExploreSuccessState value) success,
    required TResult Function(ExploreErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExploreInitialState value)? initial,
    TResult? Function(ExploreLoadingState value)? loading,
    TResult? Function(ExploreSuccessState value)? success,
    TResult? Function(ExploreErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExploreInitialState value)? initial,
    TResult Function(ExploreLoadingState value)? loading,
    TResult Function(ExploreSuccessState value)? success,
    TResult Function(ExploreErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ExploreInitialState implements ExploreState {
  const factory ExploreInitialState() = _$ExploreInitialStateImpl;
}

/// @nodoc
abstract class _$$ExploreLoadingStateImplCopyWith<$Res> {
  factory _$$ExploreLoadingStateImplCopyWith(_$ExploreLoadingStateImpl value,
          $Res Function(_$ExploreLoadingStateImpl) then) =
      __$$ExploreLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExploreLoadingStateImplCopyWithImpl<$Res>
    extends _$ExploreStateCopyWithImpl<$Res, _$ExploreLoadingStateImpl>
    implements _$$ExploreLoadingStateImplCopyWith<$Res> {
  __$$ExploreLoadingStateImplCopyWithImpl(_$ExploreLoadingStateImpl _value,
      $Res Function(_$ExploreLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExploreLoadingStateImpl implements ExploreLoadingState {
  const _$ExploreLoadingStateImpl();

  @override
  String toString() {
    return 'ExploreState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExploreLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TopHeadlines> data) success,
    required TResult Function(Exception error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TopHeadlines> data)? success,
    TResult? Function(Exception error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TopHeadlines> data)? success,
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
    required TResult Function(ExploreInitialState value) initial,
    required TResult Function(ExploreLoadingState value) loading,
    required TResult Function(ExploreSuccessState value) success,
    required TResult Function(ExploreErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExploreInitialState value)? initial,
    TResult? Function(ExploreLoadingState value)? loading,
    TResult? Function(ExploreSuccessState value)? success,
    TResult? Function(ExploreErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExploreInitialState value)? initial,
    TResult Function(ExploreLoadingState value)? loading,
    TResult Function(ExploreSuccessState value)? success,
    TResult Function(ExploreErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ExploreLoadingState implements ExploreState {
  const factory ExploreLoadingState() = _$ExploreLoadingStateImpl;
}

/// @nodoc
abstract class _$$ExploreSuccessStateImplCopyWith<$Res> {
  factory _$$ExploreSuccessStateImplCopyWith(_$ExploreSuccessStateImpl value,
          $Res Function(_$ExploreSuccessStateImpl) then) =
      __$$ExploreSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TopHeadlines> data});
}

/// @nodoc
class __$$ExploreSuccessStateImplCopyWithImpl<$Res>
    extends _$ExploreStateCopyWithImpl<$Res, _$ExploreSuccessStateImpl>
    implements _$$ExploreSuccessStateImplCopyWith<$Res> {
  __$$ExploreSuccessStateImplCopyWithImpl(_$ExploreSuccessStateImpl _value,
      $Res Function(_$ExploreSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ExploreSuccessStateImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TopHeadlines>,
    ));
  }
}

/// @nodoc

class _$ExploreSuccessStateImpl implements ExploreSuccessState {
  const _$ExploreSuccessStateImpl(final List<TopHeadlines> data) : _data = data;

  final List<TopHeadlines> _data;
  @override
  List<TopHeadlines> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ExploreState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExploreSuccessStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExploreSuccessStateImplCopyWith<_$ExploreSuccessStateImpl> get copyWith =>
      __$$ExploreSuccessStateImplCopyWithImpl<_$ExploreSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TopHeadlines> data) success,
    required TResult Function(Exception error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TopHeadlines> data)? success,
    TResult? Function(Exception error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TopHeadlines> data)? success,
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
    required TResult Function(ExploreInitialState value) initial,
    required TResult Function(ExploreLoadingState value) loading,
    required TResult Function(ExploreSuccessState value) success,
    required TResult Function(ExploreErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExploreInitialState value)? initial,
    TResult? Function(ExploreLoadingState value)? loading,
    TResult? Function(ExploreSuccessState value)? success,
    TResult? Function(ExploreErrorState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExploreInitialState value)? initial,
    TResult Function(ExploreLoadingState value)? loading,
    TResult Function(ExploreSuccessState value)? success,
    TResult Function(ExploreErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ExploreSuccessState implements ExploreState {
  const factory ExploreSuccessState(final List<TopHeadlines> data) =
      _$ExploreSuccessStateImpl;

  List<TopHeadlines> get data;
  @JsonKey(ignore: true)
  _$$ExploreSuccessStateImplCopyWith<_$ExploreSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExploreErrorStateImplCopyWith<$Res> {
  factory _$$ExploreErrorStateImplCopyWith(_$ExploreErrorStateImpl value,
          $Res Function(_$ExploreErrorStateImpl) then) =
      __$$ExploreErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception error});
}

/// @nodoc
class __$$ExploreErrorStateImplCopyWithImpl<$Res>
    extends _$ExploreStateCopyWithImpl<$Res, _$ExploreErrorStateImpl>
    implements _$$ExploreErrorStateImplCopyWith<$Res> {
  __$$ExploreErrorStateImplCopyWithImpl(_$ExploreErrorStateImpl _value,
      $Res Function(_$ExploreErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ExploreErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$ExploreErrorStateImpl implements ExploreErrorState {
  const _$ExploreErrorStateImpl(this.error);

  @override
  final Exception error;

  @override
  String toString() {
    return 'ExploreState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExploreErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExploreErrorStateImplCopyWith<_$ExploreErrorStateImpl> get copyWith =>
      __$$ExploreErrorStateImplCopyWithImpl<_$ExploreErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TopHeadlines> data) success,
    required TResult Function(Exception error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TopHeadlines> data)? success,
    TResult? Function(Exception error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TopHeadlines> data)? success,
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
    required TResult Function(ExploreInitialState value) initial,
    required TResult Function(ExploreLoadingState value) loading,
    required TResult Function(ExploreSuccessState value) success,
    required TResult Function(ExploreErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ExploreInitialState value)? initial,
    TResult? Function(ExploreLoadingState value)? loading,
    TResult? Function(ExploreSuccessState value)? success,
    TResult? Function(ExploreErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExploreInitialState value)? initial,
    TResult Function(ExploreLoadingState value)? loading,
    TResult Function(ExploreSuccessState value)? success,
    TResult Function(ExploreErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ExploreErrorState implements ExploreState {
  const factory ExploreErrorState(final Exception error) =
      _$ExploreErrorStateImpl;

  Exception get error;
  @JsonKey(ignore: true)
  _$$ExploreErrorStateImplCopyWith<_$ExploreErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
