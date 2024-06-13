// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OnBoardingState {
  PageController get pageController => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnBoardingStateCopyWith<OnBoardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBoardingStateCopyWith<$Res> {
  factory $OnBoardingStateCopyWith(
          OnBoardingState value, $Res Function(OnBoardingState) then) =
      _$OnBoardingStateCopyWithImpl<$Res, OnBoardingState>;
  @useResult
  $Res call({PageController pageController, int currentPage});
}

/// @nodoc
class _$OnBoardingStateCopyWithImpl<$Res, $Val extends OnBoardingState>
    implements $OnBoardingStateCopyWith<$Res> {
  _$OnBoardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageController = null,
    Object? currentPage = null,
  }) {
    return _then(_value.copyWith(
      pageController: null == pageController
          ? _value.pageController
          : pageController // ignore: cast_nullable_to_non_nullable
              as PageController,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnBoardingStateImplCopyWith<$Res>
    implements $OnBoardingStateCopyWith<$Res> {
  factory _$$OnBoardingStateImplCopyWith(_$OnBoardingStateImpl value,
          $Res Function(_$OnBoardingStateImpl) then) =
      __$$OnBoardingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PageController pageController, int currentPage});
}

/// @nodoc
class __$$OnBoardingStateImplCopyWithImpl<$Res>
    extends _$OnBoardingStateCopyWithImpl<$Res, _$OnBoardingStateImpl>
    implements _$$OnBoardingStateImplCopyWith<$Res> {
  __$$OnBoardingStateImplCopyWithImpl(
      _$OnBoardingStateImpl _value, $Res Function(_$OnBoardingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageController = null,
    Object? currentPage = null,
  }) {
    return _then(_$OnBoardingStateImpl(
      pageController: null == pageController
          ? _value.pageController
          : pageController // ignore: cast_nullable_to_non_nullable
              as PageController,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnBoardingStateImpl implements _OnBoardingState {
  const _$OnBoardingStateImpl(
      {required this.pageController, this.currentPage = 0});

  @override
  final PageController pageController;
  @override
  @JsonKey()
  final int currentPage;

  @override
  String toString() {
    return 'OnBoardingState(pageController: $pageController, currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnBoardingStateImpl &&
            (identical(other.pageController, pageController) ||
                other.pageController == pageController) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageController, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnBoardingStateImplCopyWith<_$OnBoardingStateImpl> get copyWith =>
      __$$OnBoardingStateImplCopyWithImpl<_$OnBoardingStateImpl>(
          this, _$identity);
}

abstract class _OnBoardingState implements OnBoardingState {
  const factory _OnBoardingState(
      {required final PageController pageController,
      final int currentPage}) = _$OnBoardingStateImpl;

  @override
  PageController get pageController;
  @override
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$OnBoardingStateImplCopyWith<_$OnBoardingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
