// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddToCartEvent extends AddToCartEvent {
  @override
  final int productId;
  @override
  final int quantity;

  factory _$AddToCartEvent([void Function(AddToCartEventBuilder)? updates]) =>
      (new AddToCartEventBuilder()..update(updates))._build();

  _$AddToCartEvent._({required this.productId, required this.quantity})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        productId, r'AddToCartEvent', 'productId');
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
        productId == other.productId &&
        quantity == other.quantity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddToCartEvent')
          ..add('productId', productId)
          ..add('quantity', quantity))
        .toString();
  }
}

class AddToCartEventBuilder
    implements Builder<AddToCartEvent, AddToCartEventBuilder> {
  _$AddToCartEvent? _$v;

  int? _productId;
  int? get productId => _$this._productId;
  set productId(int? productId) => _$this._productId = productId;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  AddToCartEventBuilder();

  AddToCartEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
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
            productId: BuiltValueNullFieldError.checkNotNull(
                productId, r'AddToCartEvent', 'productId'),
            quantity: BuiltValueNullFieldError.checkNotNull(
                quantity, r'AddToCartEvent', 'quantity'));
    replace(_$result);
    return _$result;
  }
}

class _$GetProductEvent extends GetProductEvent {
  @override
  final int productId;

  factory _$GetProductEvent([void Function(GetProductEventBuilder)? updates]) =>
      (new GetProductEventBuilder()..update(updates))._build();

  _$GetProductEvent._({required this.productId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        productId, r'GetProductEvent', 'productId');
  }

  @override
  GetProductEvent rebuild(void Function(GetProductEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetProductEventBuilder toBuilder() =>
      new GetProductEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetProductEvent && productId == other.productId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetProductEvent')
          ..add('productId', productId))
        .toString();
  }
}

class GetProductEventBuilder
    implements Builder<GetProductEvent, GetProductEventBuilder> {
  _$GetProductEvent? _$v;

  int? _productId;
  int? get productId => _$this._productId;
  set productId(int? productId) => _$this._productId = productId;

  GetProductEventBuilder();

  GetProductEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetProductEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetProductEvent;
  }

  @override
  void update(void Function(GetProductEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetProductEvent build() => _build();

  _$GetProductEvent _build() {
    final _$result = _$v ??
        new _$GetProductEvent._(
            productId: BuiltValueNullFieldError.checkNotNull(
                productId, r'GetProductEvent', 'productId'));
    replace(_$result);
    return _$result;
  }
}

class _$ChangeProductFavoriteStatusEvent
    extends ChangeProductFavoriteStatusEvent {
  @override
  final int productId;
  @override
  final bool isFavorite;

  factory _$ChangeProductFavoriteStatusEvent(
          [void Function(ChangeProductFavoriteStatusEventBuilder)? updates]) =>
      (new ChangeProductFavoriteStatusEventBuilder()..update(updates))._build();

  _$ChangeProductFavoriteStatusEvent._(
      {required this.productId, required this.isFavorite})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        productId, r'ChangeProductFavoriteStatusEvent', 'productId');
    BuiltValueNullFieldError.checkNotNull(
        isFavorite, r'ChangeProductFavoriteStatusEvent', 'isFavorite');
  }

  @override
  ChangeProductFavoriteStatusEvent rebuild(
          void Function(ChangeProductFavoriteStatusEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeProductFavoriteStatusEventBuilder toBuilder() =>
      new ChangeProductFavoriteStatusEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeProductFavoriteStatusEvent &&
        productId == other.productId &&
        isFavorite == other.isFavorite;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productId.hashCode);
    _$hash = $jc(_$hash, isFavorite.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangeProductFavoriteStatusEvent')
          ..add('productId', productId)
          ..add('isFavorite', isFavorite))
        .toString();
  }
}

class ChangeProductFavoriteStatusEventBuilder
    implements
        Builder<ChangeProductFavoriteStatusEvent,
            ChangeProductFavoriteStatusEventBuilder> {
  _$ChangeProductFavoriteStatusEvent? _$v;

  int? _productId;
  int? get productId => _$this._productId;
  set productId(int? productId) => _$this._productId = productId;

  bool? _isFavorite;
  bool? get isFavorite => _$this._isFavorite;
  set isFavorite(bool? isFavorite) => _$this._isFavorite = isFavorite;

  ChangeProductFavoriteStatusEventBuilder();

  ChangeProductFavoriteStatusEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productId = $v.productId;
      _isFavorite = $v.isFavorite;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeProductFavoriteStatusEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeProductFavoriteStatusEvent;
  }

  @override
  void update(void Function(ChangeProductFavoriteStatusEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeProductFavoriteStatusEvent build() => _build();

  _$ChangeProductFavoriteStatusEvent _build() {
    final _$result = _$v ??
        new _$ChangeProductFavoriteStatusEvent._(
            productId: BuiltValueNullFieldError.checkNotNull(
                productId, r'ChangeProductFavoriteStatusEvent', 'productId'),
            isFavorite: BuiltValueNullFieldError.checkNotNull(
                isFavorite, r'ChangeProductFavoriteStatusEvent', 'isFavorite'));
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

class _$EmitInitial extends EmitInitial {
  factory _$EmitInitial([void Function(EmitInitialBuilder)? updates]) =>
      (new EmitInitialBuilder()..update(updates))._build();

  _$EmitInitial._() : super._();

  @override
  EmitInitial rebuild(void Function(EmitInitialBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmitInitialBuilder toBuilder() => new EmitInitialBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmitInitial;
  }

  @override
  int get hashCode {
    return 552192330;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'EmitInitial').toString();
  }
}

class EmitInitialBuilder implements Builder<EmitInitial, EmitInitialBuilder> {
  _$EmitInitial? _$v;

  EmitInitialBuilder();

  @override
  void replace(EmitInitial other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmitInitial;
  }

  @override
  void update(void Function(EmitInitialBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmitInitial build() => _build();

  _$EmitInitial _build() {
    final _$result = _$v ?? new _$EmitInitial._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
