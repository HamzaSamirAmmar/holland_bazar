// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResetPasswordEvent extends ResetPasswordEvent {
  @override
  final String password;

  factory _$ResetPasswordEvent(
          [void Function(ResetPasswordEventBuilder)? updates]) =>
      (new ResetPasswordEventBuilder()..update(updates))._build();

  _$ResetPasswordEvent._({required this.password}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        password, r'ResetPasswordEvent', 'password');
  }

  @override
  ResetPasswordEvent rebuild(
          void Function(ResetPasswordEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResetPasswordEventBuilder toBuilder() =>
      new ResetPasswordEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetPasswordEvent && password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResetPasswordEvent')
          ..add('password', password))
        .toString();
  }
}

class ResetPasswordEventBuilder
    implements Builder<ResetPasswordEvent, ResetPasswordEventBuilder> {
  _$ResetPasswordEvent? _$v;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  ResetPasswordEventBuilder();

  ResetPasswordEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResetPasswordEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResetPasswordEvent;
  }

  @override
  void update(void Function(ResetPasswordEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResetPasswordEvent build() => _build();

  _$ResetPasswordEvent _build() {
    final _$result = _$v ??
        new _$ResetPasswordEvent._(
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'ResetPasswordEvent', 'password'));
    replace(_$result);
    return _$result;
  }
}

class _$ClearMessage extends ClearMessage {
  factory _$ClearMessage([void Function(ClearMessageBuilder)? updates]) =>
      (new ClearMessageBuilder()..update(updates))._build();

  _$ClearMessage._() : super._();

  @override
  ClearMessage rebuild(void Function(ClearMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearMessageBuilder toBuilder() => new ClearMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearMessage;
  }

  @override
  int get hashCode {
    return 147402354;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'ClearMessage').toString();
  }
}

class ClearMessageBuilder
    implements Builder<ClearMessage, ClearMessageBuilder> {
  _$ClearMessage? _$v;

  ClearMessageBuilder();

  @override
  void replace(ClearMessage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClearMessage;
  }

  @override
  void update(void Function(ClearMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClearMessage build() => _build();

  _$ClearMessage _build() {
    final _$result = _$v ?? new _$ClearMessage._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
