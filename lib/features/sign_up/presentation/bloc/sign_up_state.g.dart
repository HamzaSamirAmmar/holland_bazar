// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignUpState extends SignUpState {
  @override
  final bool pushOTPPage;
  @override
  final bool isLoading;
  @override
  final bool error;
  @override
  final String message;

  factory _$SignUpState([void Function(SignUpStateBuilder)? updates]) =>
      (new SignUpStateBuilder()..update(updates))._build();

  _$SignUpState._(
      {required this.pushOTPPage,
      required this.isLoading,
      required this.error,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        pushOTPPage, r'SignUpState', 'pushOTPPage');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'SignUpState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, r'SignUpState', 'error');
    BuiltValueNullFieldError.checkNotNull(message, r'SignUpState', 'message');
  }

  @override
  SignUpState rebuild(void Function(SignUpStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpStateBuilder toBuilder() => new SignUpStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpState &&
        pushOTPPage == other.pushOTPPage &&
        isLoading == other.isLoading &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pushOTPPage.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignUpState')
          ..add('pushOTPPage', pushOTPPage)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class SignUpStateBuilder implements Builder<SignUpState, SignUpStateBuilder> {
  _$SignUpState? _$v;

  bool? _pushOTPPage;
  bool? get pushOTPPage => _$this._pushOTPPage;
  set pushOTPPage(bool? pushOTPPage) => _$this._pushOTPPage = pushOTPPage;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  SignUpStateBuilder();

  SignUpStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pushOTPPage = $v.pushOTPPage;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUpState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignUpState;
  }

  @override
  void update(void Function(SignUpStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignUpState build() => _build();

  _$SignUpState _build() {
    final _$result = _$v ??
        new _$SignUpState._(
            pushOTPPage: BuiltValueNullFieldError.checkNotNull(
                pushOTPPage, r'SignUpState', 'pushOTPPage'),
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'SignUpState', 'isLoading'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'SignUpState', 'error'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'SignUpState', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
