// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OTPState extends OTPState {
  @override
  final bool isCodeVerified;
  @override
  final bool isLoading;
  @override
  final bool error;
  @override
  final String message;

  factory _$OTPState([void Function(OTPStateBuilder)? updates]) =>
      (new OTPStateBuilder()..update(updates))._build();

  _$OTPState._(
      {required this.isCodeVerified,
      required this.isLoading,
      required this.error,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isCodeVerified, r'OTPState', 'isCodeVerified');
    BuiltValueNullFieldError.checkNotNull(isLoading, r'OTPState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, r'OTPState', 'error');
    BuiltValueNullFieldError.checkNotNull(message, r'OTPState', 'message');
  }

  @override
  OTPState rebuild(void Function(OTPStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OTPStateBuilder toBuilder() => new OTPStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OTPState &&
        isCodeVerified == other.isCodeVerified &&
        isLoading == other.isLoading &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isCodeVerified.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OTPState')
          ..add('isCodeVerified', isCodeVerified)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class OTPStateBuilder implements Builder<OTPState, OTPStateBuilder> {
  _$OTPState? _$v;

  bool? _isCodeVerified;
  bool? get isCodeVerified => _$this._isCodeVerified;
  set isCodeVerified(bool? isCodeVerified) =>
      _$this._isCodeVerified = isCodeVerified;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  OTPStateBuilder();

  OTPStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isCodeVerified = $v.isCodeVerified;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OTPState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OTPState;
  }

  @override
  void update(void Function(OTPStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OTPState build() => _build();

  _$OTPState _build() {
    final _$result = _$v ??
        new _$OTPState._(
            isCodeVerified: BuiltValueNullFieldError.checkNotNull(
                isCodeVerified, r'OTPState', 'isCodeVerified'),
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'OTPState', 'isLoading'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'OTPState', 'error'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'OTPState', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
