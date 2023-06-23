// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PostLoginEvent extends PostLoginEvent {
  @override
  final String number;
  @override
  final String password;

  factory _$PostLoginEvent([void Function(PostLoginEventBuilder)? updates]) =>
      (new PostLoginEventBuilder()..update(updates))._build();

  _$PostLoginEvent._({required this.number, required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(number, r'PostLoginEvent', 'number');
    BuiltValueNullFieldError.checkNotNull(
        password, r'PostLoginEvent', 'password');
  }

  @override
  PostLoginEvent rebuild(void Function(PostLoginEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostLoginEventBuilder toBuilder() =>
      new PostLoginEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostLoginEvent &&
        number == other.number &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostLoginEvent')
          ..add('number', number)
          ..add('password', password))
        .toString();
  }
}

class PostLoginEventBuilder
    implements Builder<PostLoginEvent, PostLoginEventBuilder> {
  _$PostLoginEvent? _$v;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  PostLoginEventBuilder();

  PostLoginEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _number = $v.number;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostLoginEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostLoginEvent;
  }

  @override
  void update(void Function(PostLoginEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostLoginEvent build() => _build();

  _$PostLoginEvent _build() {
    final _$result = _$v ??
        new _$PostLoginEvent._(
            number: BuiltValueNullFieldError.checkNotNull(
                number, r'PostLoginEvent', 'number'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'PostLoginEvent', 'password'));
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
