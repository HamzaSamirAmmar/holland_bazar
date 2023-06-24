// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CartState extends CartState {
  @override
  final Cart? cart;
  @override
  final bool isLoading;
  @override
  final bool error;
  @override
  final String message;

  factory _$CartState([void Function(CartStateBuilder)? updates]) =>
      (new CartStateBuilder()..update(updates))._build();

  _$CartState._(
      {this.cart,
      required this.isLoading,
      required this.error,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(isLoading, r'CartState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, r'CartState', 'error');
    BuiltValueNullFieldError.checkNotNull(message, r'CartState', 'message');
  }

  @override
  CartState rebuild(void Function(CartStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartStateBuilder toBuilder() => new CartStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartState &&
        cart == other.cart &&
        isLoading == other.isLoading &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cart.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CartState')
          ..add('cart', cart)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class CartStateBuilder implements Builder<CartState, CartStateBuilder> {
  _$CartState? _$v;

  Cart? _cart;
  Cart? get cart => _$this._cart;
  set cart(Cart? cart) => _$this._cart = cart;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  CartStateBuilder();

  CartStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cart = $v.cart;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CartState;
  }

  @override
  void update(void Function(CartStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CartState build() => _build();

  _$CartState _build() {
    final _$result = _$v ??
        new _$CartState._(
            cart: cart,
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'CartState', 'isLoading'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'CartState', 'error'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'CartState', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
