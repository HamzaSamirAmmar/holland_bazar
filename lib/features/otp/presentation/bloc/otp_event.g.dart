// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SendCodeEvent extends SendCodeEvent {
  @override
  final String number;

  factory _$SendCodeEvent([void Function(SendCodeEventBuilder)? updates]) =>
      (new SendCodeEventBuilder()..update(updates))._build();

  _$SendCodeEvent._({required this.number}) : super._() {
    BuiltValueNullFieldError.checkNotNull(number, r'SendCodeEvent', 'number');
  }

  @override
  SendCodeEvent rebuild(void Function(SendCodeEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SendCodeEventBuilder toBuilder() => new SendCodeEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SendCodeEvent && number == other.number;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, number.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SendCodeEvent')
          ..add('number', number))
        .toString();
  }
}

class SendCodeEventBuilder
    implements Builder<SendCodeEvent, SendCodeEventBuilder> {
  _$SendCodeEvent? _$v;

  String? _number;
  String? get number => _$this._number;
  set number(String? number) => _$this._number = number;

  SendCodeEventBuilder();

  SendCodeEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _number = $v.number;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SendCodeEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SendCodeEvent;
  }

  @override
  void update(void Function(SendCodeEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SendCodeEvent build() => _build();

  _$SendCodeEvent _build() {
    final _$result = _$v ??
        new _$SendCodeEvent._(
            number: BuiltValueNullFieldError.checkNotNull(
                number, r'SendCodeEvent', 'number'));
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
