// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

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

class _$GetCartEvent extends GetCartEvent {
  factory _$GetCartEvent([void Function(GetCartEventBuilder)? updates]) =>
      (new GetCartEventBuilder()..update(updates))._build();

  _$GetCartEvent._() : super._();

  @override
  GetCartEvent rebuild(void Function(GetCartEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCartEventBuilder toBuilder() => new GetCartEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCartEvent;
  }

  @override
  int get hashCode {
    return 175403914;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetCartEvent').toString();
  }
}

class GetCartEventBuilder
    implements Builder<GetCartEvent, GetCartEventBuilder> {
  _$GetCartEvent? _$v;

  GetCartEventBuilder();

  @override
  void replace(GetCartEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCartEvent;
  }

  @override
  void update(void Function(GetCartEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCartEvent build() => _build();

  _$GetCartEvent _build() {
    final _$result = _$v ?? new _$GetCartEvent._();
    replace(_$result);
    return _$result;
  }
}

class _$RemoveFromCartEvent extends RemoveFromCartEvent {
  @override
  final int id;

  factory _$RemoveFromCartEvent(
          [void Function(RemoveFromCartEventBuilder)? updates]) =>
      (new RemoveFromCartEventBuilder()..update(updates))._build();

  _$RemoveFromCartEvent._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'RemoveFromCartEvent', 'id');
  }

  @override
  RemoveFromCartEvent rebuild(
          void Function(RemoveFromCartEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveFromCartEventBuilder toBuilder() =>
      new RemoveFromCartEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveFromCartEvent && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RemoveFromCartEvent')..add('id', id))
        .toString();
  }
}

class RemoveFromCartEventBuilder
    implements Builder<RemoveFromCartEvent, RemoveFromCartEventBuilder> {
  _$RemoveFromCartEvent? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  RemoveFromCartEventBuilder();

  RemoveFromCartEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveFromCartEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemoveFromCartEvent;
  }

  @override
  void update(void Function(RemoveFromCartEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RemoveFromCartEvent build() => _build();

  _$RemoveFromCartEvent _build() {
    final _$result = _$v ??
        new _$RemoveFromCartEvent._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'RemoveFromCartEvent', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$AddToCartEvent extends AddToCartEvent {
  @override
  final int id;
  @override
  final int quantity;

  factory _$AddToCartEvent([void Function(AddToCartEventBuilder)? updates]) =>
      (new AddToCartEventBuilder()..update(updates))._build();

  _$AddToCartEvent._({required this.id, required this.quantity}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'AddToCartEvent', 'id');
    BuiltValueNullFieldError.checkNotNull(
        quantity, r'AddToCartEvent', 'quantity');
  }

  @override
  AddToCartEvent rebuild(void Function(AddToCartEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddToCartEventBuilder toBuilder() =>
      new AddToCartEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddToCartEvent &&
        id == other.id &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddToCartEvent')
          ..add('id', id)
          ..add('quantity', quantity))
        .toString();
  }
}

class AddToCartEventBuilder
    implements Builder<AddToCartEvent, AddToCartEventBuilder> {
  _$AddToCartEvent? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  AddToCartEventBuilder();

  AddToCartEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _quantity = $v.quantity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddToCartEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddToCartEvent;
  }

  @override
  void update(void Function(AddToCartEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddToCartEvent build() => _build();

  _$AddToCartEvent _build() {
    final _$result = _$v ??
        new _$AddToCartEvent._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'AddToCartEvent', 'id'),
            quantity: BuiltValueNullFieldError.checkNotNull(
                quantity, r'AddToCartEvent', 'quantity'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
