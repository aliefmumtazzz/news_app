// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sport_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SportState {
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
    required TResult Function(SportInitialState value) initial,
    required TResult Function(SportLoadingState value) loading,
    required TResult Function(SportSuccessState value) success,
    required TResult Function(SportErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SportInitialState value)? initial,
    TResult? Function(SportLoadingState value)? loading,
    TResult? Function(SportSuccessState value)? success,
    TResult? Function(SportErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SportInitialState value)? initial,
    TResult Function(SportLoadingState value)? loading,
    TResult Function(SportSuccessState value)? success,
    TResult Function(SportErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SportStateCopyWith<$Res> {
  factory $SportStateCopyWith(
          SportState value, $Res Function(SportState) then) =
      _$SportStateCopyWithImpl<$Res, SportState>;
}

/// @nodoc
class _$SportStateCopyWithImpl<$Res, $Val extends SportState>
    implements $SportStateCopyWith<$Res> {
  _$SportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SportInitialStateImplCopyWith<$Res> {
  factory _$$SportInitialStateImplCopyWith(_$SportInitialStateImpl value,
          $Res Function(_$SportInitialStateImpl) then) =
      __$$SportInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SportInitialStateImplCopyWithImpl<$Res>
    extends _$SportStateCopyWithImpl<$Res, _$SportInitialStateImpl>
    implements _$$SportInitialStateImplCopyWith<$Res> {
  __$$SportInitialStateImplCopyWithImpl(_$SportInitialStateImpl _value,
      $Res Function(_$SportInitialStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SportInitialStateImpl implements SportInitialState {
  const _$SportInitialStateImpl();

  @override
  String toString() {
    return 'SportState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SportInitialStateImpl);
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
    required TResult Function(SportInitialState value) initial,
    required TResult Function(SportLoadingState value) loading,
    required TResult Function(SportSuccessState value) success,
    required TResult Function(SportErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SportInitialState value)? initial,
    TResult? Function(SportLoadingState value)? loading,
    TResult? Function(SportSuccessState value)? success,
    TResult? Function(SportErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SportInitialState value)? initial,
    TResult Function(SportLoadingState value)? loading,
    TResult Function(SportSuccessState value)? success,
    TResult Function(SportErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SportInitialState implements SportState {
  const factory SportInitialState() = _$SportInitialStateImpl;
}

/// @nodoc
abstract class _$$SportLoadingStateImplCopyWith<$Res> {
  factory _$$SportLoadingStateImplCopyWith(_$SportLoadingStateImpl value,
          $Res Function(_$SportLoadingStateImpl) then) =
      __$$SportLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SportLoadingStateImplCopyWithImpl<$Res>
    extends _$SportStateCopyWithImpl<$Res, _$SportLoadingStateImpl>
    implements _$$SportLoadingStateImplCopyWith<$Res> {
  __$$SportLoadingStateImplCopyWithImpl(_$SportLoadingStateImpl _value,
      $Res Function(_$SportLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SportLoadingStateImpl implements SportLoadingState {
  const _$SportLoadingStateImpl();

  @override
  String toString() {
    return 'SportState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SportLoadingStateImpl);
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
    required TResult Function(SportInitialState value) initial,
    required TResult Function(SportLoadingState value) loading,
    required TResult Function(SportSuccessState value) success,
    required TResult Function(SportErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SportInitialState value)? initial,
    TResult? Function(SportLoadingState value)? loading,
    TResult? Function(SportSuccessState value)? success,
    TResult? Function(SportErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SportInitialState value)? initial,
    TResult Function(SportLoadingState value)? loading,
    TResult Function(SportSuccessState value)? success,
    TResult Function(SportErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SportLoadingState implements SportState {
  const factory SportLoadingState() = _$SportLoadingStateImpl;
}

/// @nodoc
abstract class _$$SportSuccessStateImplCopyWith<$Res> {
  factory _$$SportSuccessStateImplCopyWith(_$SportSuccessStateImpl value,
          $Res Function(_$SportSuccessStateImpl) then) =
      __$$SportSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TopHeadlines> data});
}

/// @nodoc
class __$$SportSuccessStateImplCopyWithImpl<$Res>
    extends _$SportStateCopyWithImpl<$Res, _$SportSuccessStateImpl>
    implements _$$SportSuccessStateImplCopyWith<$Res> {
  __$$SportSuccessStateImplCopyWithImpl(_$SportSuccessStateImpl _value,
      $Res Function(_$SportSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SportSuccessStateImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TopHeadlines>,
    ));
  }
}

/// @nodoc

class _$SportSuccessStateImpl implements SportSuccessState {
  const _$SportSuccessStateImpl(final List<TopHeadlines> data) : _data = data;

  final List<TopHeadlines> _data;
  @override
  List<TopHeadlines> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SportState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SportSuccessStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SportSuccessStateImplCopyWith<_$SportSuccessStateImpl> get copyWith =>
      __$$SportSuccessStateImplCopyWithImpl<_$SportSuccessStateImpl>(
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
    required TResult Function(SportInitialState value) initial,
    required TResult Function(SportLoadingState value) loading,
    required TResult Function(SportSuccessState value) success,
    required TResult Function(SportErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SportInitialState value)? initial,
    TResult? Function(SportLoadingState value)? loading,
    TResult? Function(SportSuccessState value)? success,
    TResult? Function(SportErrorState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SportInitialState value)? initial,
    TResult Function(SportLoadingState value)? loading,
    TResult Function(SportSuccessState value)? success,
    TResult Function(SportErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SportSuccessState implements SportState {
  const factory SportSuccessState(final List<TopHeadlines> data) =
      _$SportSuccessStateImpl;

  List<TopHeadlines> get data;
  @JsonKey(ignore: true)
  _$$SportSuccessStateImplCopyWith<_$SportSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SportErrorStateImplCopyWith<$Res> {
  factory _$$SportErrorStateImplCopyWith(_$SportErrorStateImpl value,
          $Res Function(_$SportErrorStateImpl) then) =
      __$$SportErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception error});
}

/// @nodoc
class __$$SportErrorStateImplCopyWithImpl<$Res>
    extends _$SportStateCopyWithImpl<$Res, _$SportErrorStateImpl>
    implements _$$SportErrorStateImplCopyWith<$Res> {
  __$$SportErrorStateImplCopyWithImpl(
      _$SportErrorStateImpl _value, $Res Function(_$SportErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SportErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$SportErrorStateImpl implements SportErrorState {
  const _$SportErrorStateImpl(this.error);

  @override
  final Exception error;

  @override
  String toString() {
    return 'SportState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SportErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SportErrorStateImplCopyWith<_$SportErrorStateImpl> get copyWith =>
      __$$SportErrorStateImplCopyWithImpl<_$SportErrorStateImpl>(
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
    required TResult Function(SportInitialState value) initial,
    required TResult Function(SportLoadingState value) loading,
    required TResult Function(SportSuccessState value) success,
    required TResult Function(SportErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SportInitialState value)? initial,
    TResult? Function(SportLoadingState value)? loading,
    TResult? Function(SportSuccessState value)? success,
    TResult? Function(SportErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SportInitialState value)? initial,
    TResult Function(SportLoadingState value)? loading,
    TResult Function(SportSuccessState value)? success,
    TResult Function(SportErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SportErrorState implements SportState {
  const factory SportErrorState(final Exception error) = _$SportErrorStateImpl;

  Exception get error;
  @JsonKey(ignore: true)
  _$$SportErrorStateImplCopyWith<_$SportErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
