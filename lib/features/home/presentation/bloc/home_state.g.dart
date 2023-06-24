// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeState extends HomeState {
  @override
  final PaginationStateData<Category> categories;
  @override
  final PaginationStateData<Product> frequentlyOrderedProducts;
  @override
  final bool isLoading;
  @override
  final bool error;
  @override
  final String message;

  factory _$HomeState([void Function(HomeStateBuilder)? updates]) =>
      (new HomeStateBuilder()..update(updates))._build();

  _$HomeState._(
      {required this.categories,
      required this.frequentlyOrderedProducts,
      required this.isLoading,
      required this.error,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        categories, r'HomeState', 'categories');
    BuiltValueNullFieldError.checkNotNull(
        frequentlyOrderedProducts, r'HomeState', 'frequentlyOrderedProducts');
    BuiltValueNullFieldError.checkNotNull(isLoading, r'HomeState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, r'HomeState', 'error');
    BuiltValueNullFieldError.checkNotNull(message, r'HomeState', 'message');
  }

  @override
  HomeState rebuild(void Function(HomeStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeStateBuilder toBuilder() => new HomeStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeState &&
        categories == other.categories &&
        frequentlyOrderedProducts == other.frequentlyOrderedProducts &&
        isLoading == other.isLoading &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, categories.hashCode);
    _$hash = $jc(_$hash, frequentlyOrderedProducts.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HomeState')
          ..add('categories', categories)
          ..add('frequentlyOrderedProducts', frequentlyOrderedProducts)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class HomeStateBuilder implements Builder<HomeState, HomeStateBuilder> {
  _$HomeState? _$v;

  PaginationStateDataBuilder<Category>? _categories;
  PaginationStateDataBuilder<Category> get categories =>
      _$this._categories ??= new PaginationStateDataBuilder<Category>();
  set categories(PaginationStateDataBuilder<Category>? categories) =>
      _$this._categories = categories;

  PaginationStateDataBuilder<Product>? _frequentlyOrderedProducts;
  PaginationStateDataBuilder<Product> get frequentlyOrderedProducts =>
      _$this._frequentlyOrderedProducts ??=
          new PaginationStateDataBuilder<Product>();
  set frequentlyOrderedProducts(
          PaginationStateDataBuilder<Product>? frequentlyOrderedProducts) =>
      _$this._frequentlyOrderedProducts = frequentlyOrderedProducts;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  HomeStateBuilder();

  HomeStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categories = $v.categories.toBuilder();
      _frequentlyOrderedProducts = $v.frequentlyOrderedProducts.toBuilder();
      _isLoading = $v.isLoading;
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HomeState;
  }

  @override
  void update(void Function(HomeStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HomeState build() => _build();

  _$HomeState _build() {
    _$HomeState _$result;
    try {
      _$result = _$v ??
          new _$HomeState._(
              categories: categories.build(),
              frequentlyOrderedProducts: frequentlyOrderedProducts.build(),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, r'HomeState', 'isLoading'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'HomeState', 'error'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'HomeState', 'message'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        categories.build();
        _$failedField = 'frequentlyOrderedProducts';
        frequentlyOrderedProducts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HomeState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
