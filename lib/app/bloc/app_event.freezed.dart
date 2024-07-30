// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppInitiated {}

/// @nodoc
abstract class $AppInitiatedCopyWith<$Res> {
  factory $AppInitiatedCopyWith(
          AppInitiated value, $Res Function(AppInitiated) then) =
      _$AppInitiatedCopyWithImpl<$Res, AppInitiated>;
}

/// @nodoc
class _$AppInitiatedCopyWithImpl<$Res, $Val extends AppInitiated>
    implements $AppInitiatedCopyWith<$Res> {
  _$AppInitiatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AppInitiatedImplCopyWith<$Res> {
  factory _$$AppInitiatedImplCopyWith(
          _$AppInitiatedImpl value, $Res Function(_$AppInitiatedImpl) then) =
      __$$AppInitiatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppInitiatedImplCopyWithImpl<$Res>
    extends _$AppInitiatedCopyWithImpl<$Res, _$AppInitiatedImpl>
    implements _$$AppInitiatedImplCopyWith<$Res> {
  __$$AppInitiatedImplCopyWithImpl(
      _$AppInitiatedImpl _value, $Res Function(_$AppInitiatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppInitiatedImpl implements _AppInitiated {
  const _$AppInitiatedImpl();

  @override
  String toString() {
    return 'AppInitiated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppInitiatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _AppInitiated implements AppInitiated {
  const factory _AppInitiated() = _$AppInitiatedImpl;
}

/// @nodoc
mixin _$ThemeChanged {
  ThemeMode get themeMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeChangedCopyWith<ThemeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeChangedCopyWith<$Res> {
  factory $ThemeChangedCopyWith(
          ThemeChanged value, $Res Function(ThemeChanged) then) =
      _$ThemeChangedCopyWithImpl<$Res, ThemeChanged>;
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class _$ThemeChangedCopyWithImpl<$Res, $Val extends ThemeChanged>
    implements $ThemeChangedCopyWith<$Res> {
  _$ThemeChangedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeChangedImplCopyWith<$Res>
    implements $ThemeChangedCopyWith<$Res> {
  factory _$$ThemeChangedImplCopyWith(
          _$ThemeChangedImpl value, $Res Function(_$ThemeChangedImpl) then) =
      __$$ThemeChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeMode themeMode});
}

/// @nodoc
class __$$ThemeChangedImplCopyWithImpl<$Res>
    extends _$ThemeChangedCopyWithImpl<$Res, _$ThemeChangedImpl>
    implements _$$ThemeChangedImplCopyWith<$Res> {
  __$$ThemeChangedImplCopyWithImpl(
      _$ThemeChangedImpl _value, $Res Function(_$ThemeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_$ThemeChangedImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$ThemeChangedImpl implements _ThemeChanged {
  const _$ThemeChangedImpl({required this.themeMode});

  @override
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'ThemeChanged(themeMode: $themeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeChangedImpl &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeChangedImplCopyWith<_$ThemeChangedImpl> get copyWith =>
      __$$ThemeChangedImplCopyWithImpl<_$ThemeChangedImpl>(this, _$identity);
}

abstract class _ThemeChanged implements ThemeChanged {
  const factory _ThemeChanged({required final ThemeMode themeMode}) =
      _$ThemeChangedImpl;

  @override
  ThemeMode get themeMode;
  @override
  @JsonKey(ignore: true)
  _$$ThemeChangedImplCopyWith<_$ThemeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
