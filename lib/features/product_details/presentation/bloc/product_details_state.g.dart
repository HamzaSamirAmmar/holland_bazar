// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProductDetailsState extends ProductDetailsState {
  @override
  final Product? product;
  @override
  final bool isLoading;
  @override
  final bool error;
  @override
  final String message;

  factory _$ProductDetailsState(
          [void Function(ProductDetailsStateBuilder)? updates]) =>
      (new ProductDetailsStateBuilder()..update(updates))._build();

  _$ProductDetailsState._(
      {this.product,
      required this.isLoading,
      required this.error,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'ProductDetailsState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        error, r'ProductDetailsState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, r'ProductDetailsState', 'message');
  }

  @override
  ProductDetailsState rebuild(
          void Function(ProductDetailsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductDetailsStateBuilder toBuilder() =>
      new ProductDetailsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductDetailsState &&
        product == other.product &&
        isLoading == other.isLoading &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, product.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductDetailsState')
          ..add('product', product)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class ProductDetailsStateBuilder
    implements Builder<ProductDetailsState, ProductDetailsStateBuilder> {
  _$ProductDetailsState? _$v;

  Product? _product;
  Product? get product => _$this._product;
  set product(Product? product) => _$this._product = product;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ProductDetailsStateBuilder();

  ProductDetailsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _product = $v.product;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductDetailsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductDetailsState;
  }

  @override
  void update(void Function(ProductDetailsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductDetailsState build() => _build();

  _$ProductDetailsState _build() {
    final _$result = _$v ??
        new _$ProductDetailsState._(
            product: product,
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'ProductDetailsState', 'isLoading'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'ProductDetailsState', 'error'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'ProductDetailsState', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
