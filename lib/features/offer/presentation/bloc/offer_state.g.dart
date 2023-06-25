// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OfferState extends OfferState {
  @override
  final PaginationStateData<Product> products;
  @override
  final bool isLoading;
  @override
  final bool error;
  @override
  final String message;

  factory _$OfferState([void Function(OfferStateBuilder)? updates]) =>
      (new OfferStateBuilder()..update(updates))._build();

  _$OfferState._(
      {required this.products,
      required this.isLoading,
      required this.error,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(products, r'OfferState', 'products');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'OfferState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, r'OfferState', 'error');
    BuiltValueNullFieldError.checkNotNull(message, r'OfferState', 'message');
  }

  @override
  OfferState rebuild(void Function(OfferStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OfferStateBuilder toBuilder() => new OfferStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OfferState &&
        products == other.products &&
        isLoading == other.isLoading &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, products.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OfferState')
          ..add('products', products)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class OfferStateBuilder implements Builder<OfferState, OfferStateBuilder> {
  _$OfferState? _$v;

  PaginationStateDataBuilder<Product>? _products;
  PaginationStateDataBuilder<Product> get products =>
      _$this._products ??= new PaginationStateDataBuilder<Product>();
  set products(PaginationStateDataBuilder<Product>? products) =>
      _$this._products = products;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  OfferStateBuilder();

  OfferStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _products = $v.products.toBuilder();
      _isLoading = $v.isLoading;
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OfferState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OfferState;
  }

  @override
  void update(void Function(OfferStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OfferState build() => _build();

  _$OfferState _build() {
    _$OfferState _$result;
    try {
      _$result = _$v ??
          new _$OfferState._(
              products: products.build(),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, r'OfferState', 'isLoading'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'OfferState', 'error'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'OfferState', 'message'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'products';
        products.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OfferState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
