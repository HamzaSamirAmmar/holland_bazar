// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OnboardingState extends OnboardingState {
  @override
  final bool isLoading;
  @override
  final bool error;
  @override
  final String message;

  factory _$OnboardingState([void Function(OnboardingStateBuilder)? updates]) =>
      (new OnboardingStateBuilder()..update(updates))._build();

  _$OnboardingState._(
      {required this.isLoading, required this.error, required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'OnboardingState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, r'OnboardingState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, r'OnboardingState', 'message');
  }

  @override
  OnboardingState rebuild(void Function(OnboardingStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OnboardingStateBuilder toBuilder() =>
      new OnboardingStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OnboardingState &&
        isLoading == other.isLoading &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OnboardingState')
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class OnboardingStateBuilder
    implements Builder<OnboardingState, OnboardingStateBuilder> {
  _$OnboardingState? _$v;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  OnboardingStateBuilder();

  OnboardingStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isLoading = $v.isLoading;
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OnboardingState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OnboardingState;
  }

  @override
  void update(void Function(OnboardingStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OnboardingState build() => _build();

  _$OnboardingState _build() {
    final _$result = _$v ??
        new _$OnboardingState._(
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'OnboardingState', 'isLoading'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'OnboardingState', 'error'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'OnboardingState', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
