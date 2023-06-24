// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PasswordState extends PasswordState {
  @override
  final bool success;
  @override
  final bool isLoading;
  @override
  final bool error;
  @override
  final String message;

  factory _$PasswordState([void Function(PasswordStateBuilder)? updates]) =>
      (new PasswordStateBuilder()..update(updates))._build();

  _$PasswordState._(
      {required this.success,
      required this.isLoading,
      required this.error,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(success, r'PasswordState', 'success');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'PasswordState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, r'PasswordState', 'error');
    BuiltValueNullFieldError.checkNotNull(message, r'PasswordState', 'message');
  }

  @override
  PasswordState rebuild(void Function(PasswordStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PasswordStateBuilder toBuilder() => new PasswordStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PasswordState &&
        success == other.success &&
        isLoading == other.isLoading &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PasswordState')
          ..add('success', success)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class PasswordStateBuilder
    implements Builder<PasswordState, PasswordStateBuilder> {
  _$PasswordState? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  PasswordStateBuilder();

  PasswordStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PasswordState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PasswordState;
  }

  @override
  void update(void Function(PasswordStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PasswordState build() => _build();

  _$PasswordState _build() {
    final _$result = _$v ??
        new _$PasswordState._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'PasswordState', 'success'),
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'PasswordState', 'isLoading'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'PasswordState', 'error'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'PasswordState', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
