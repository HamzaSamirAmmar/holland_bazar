// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SendSignUpDataEvent extends SendSignUpDataEvent {
  @override
  final String number;
  @override
  final String name;
  @override
  final String address;

  factory _$SendSignUpDataEvent(
          [void Function(SendSignUpDataEventBuilder)? updates]) =>
      (new SendSignUpDataEventBuilder()..update(updates))._build();

  _$SendSignUpDataEvent._(
      {required this.number, required this.name, required this.address})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        number, r'SendSignUpDataEvent', 'number');
    BuiltValueNullFieldError.checkNotNull(name, r'SendSignUpDataEvent', 'name');
    BuiltValueNullFieldError.checkNotNull(
        address, r'SendSignUpDataEvent', 'address');
  }

  @override
  SendSignUpDataEvent rebuild(
          void Function(SendSignUpDataEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendSignUpDataEventBuilder toBuilder() =>
      new SendSignUpDataEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendSignUpDataEvent &&
        number == other.number &&
        name == other.name &&
        address == other.address;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SendSignUpDataEvent')
          ..add('number', number)
          ..add('name', name)
          ..add('address', address))
        .toString();
  }
}

class SendSignUpDataEventBuilder
    implements Builder<SendSignUpDataEvent, SendSignUpDataEventBuilder> {
  _$SendSignUpDataEvent? _$v;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  SendSignUpDataEventBuilder();

  SendSignUpDataEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _number = $v.number;
      _name = $v.name;
      _address = $v.address;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendSignUpDataEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SendSignUpDataEvent;
  }

  @override
  void update(void Function(SendSignUpDataEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendSignUpDataEvent build() => _build();

  _$SendSignUpDataEvent _build() {
    final _$result = _$v ??
        new _$SendSignUpDataEvent._(
            number: BuiltValueNullFieldError.checkNotNull(
                number, r'SendSignUpDataEvent', 'number'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'SendSignUpDataEvent', 'name'),
            address: BuiltValueNullFieldError.checkNotNull(
                address, r'SendSignUpDataEvent', 'address'));
    replace(_$result);
    return _$result;
  }
}

class _$ResetPushOTPValueEvent extends ResetPushOTPValueEvent {
  factory _$ResetPushOTPValueEvent(
          [void Function(ResetPushOTPValueEventBuilder)? updates]) =>
      (new ResetPushOTPValueEventBuilder()..update(updates))._build();

  _$ResetPushOTPValueEvent._() : super._();

  @override
  ResetPushOTPValueEvent rebuild(
          void Function(ResetPushOTPValueEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResetPushOTPValueEventBuilder toBuilder() =>
      new ResetPushOTPValueEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetPushOTPValueEvent;
  }

  @override
  int get hashCode {
    return 282427537;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'ResetPushOTPValueEvent').toString();
  }
}

class ResetPushOTPValueEventBuilder
    implements Builder<ResetPushOTPValueEvent, ResetPushOTPValueEventBuilder> {
  _$ResetPushOTPValueEvent? _$v;

  ResetPushOTPValueEventBuilder();

  @override
  void replace(ResetPushOTPValueEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResetPushOTPValueEvent;
  }

  @override
  void update(void Function(ResetPushOTPValueEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResetPushOTPValueEvent build() => _build();

  _$ResetPushOTPValueEvent _build() {
    final _$result = _$v ?? new _$ResetPushOTPValueEvent._();
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
