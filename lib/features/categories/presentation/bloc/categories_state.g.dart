// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoriesState extends CategoriesState {
  @override
  final PaginationStateData<Category> categories;
  @override
  final PaginationStateData<Product> popularProducts;
  @override
  final bool isLoading;
  @override
  final bool error;
  @override
  final String message;

  factory _$CategoriesState([void Function(CategoriesStateBuilder)? updates]) =>
      (new CategoriesStateBuilder()..update(updates))._build();

  _$CategoriesState._(
      {required this.categories,
      required this.popularProducts,
      required this.isLoading,
      required this.error,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        categories, r'CategoriesState', 'categories');
    BuiltValueNullFieldError.checkNotNull(
        popularProducts, r'CategoriesState', 'popularProducts');
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'CategoriesState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, r'CategoriesState', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, r'CategoriesState', 'message');
  }

  @override
  CategoriesState rebuild(void Function(CategoriesStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriesStateBuilder toBuilder() =>
      new CategoriesStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoriesState &&
        categories == other.categories &&
        popularProducts == other.popularProducts &&
        isLoading == other.isLoading &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, categories.hashCode);
    _$hash = $jc(_$hash, popularProducts.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CategoriesState')
          ..add('categories', categories)
          ..add('popularProducts', popularProducts)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class CategoriesStateBuilder
    implements Builder<CategoriesState, CategoriesStateBuilder> {
  _$CategoriesState? _$v;

  PaginationStateDataBuilder<Category>? _categories;
  PaginationStateDataBuilder<Category> get categories =>
      _$this._categories ??= new PaginationStateDataBuilder<Category>();
  set categories(PaginationStateDataBuilder<Category>? categories) =>
      _$this._categories = categories;

  PaginationStateDataBuilder<Product>? _popularProducts;
  PaginationStateDataBuilder<Product> get popularProducts =>
      _$this._popularProducts ??= new PaginationStateDataBuilder<Product>();
  set popularProducts(PaginationStateDataBuilder<Product>? popularProducts) =>
      _$this._popularProducts = popularProducts;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  CategoriesStateBuilder();

  CategoriesStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categories = $v.categories.toBuilder();
      _popularProducts = $v.popularProducts.toBuilder();
      _isLoading = $v.isLoading;
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoriesState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoriesState;
  }

  @override
  void update(void Function(CategoriesStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CategoriesState build() => _build();

  _$CategoriesState _build() {
    _$CategoriesState _$result;
    try {
      _$result = _$v ??
          new _$CategoriesState._(
              categories: categories.build(),
              popularProducts: popularProducts.build(),
              isLoading: BuiltValueNullFieldError.checkNotNull(
                  isLoading, r'CategoriesState', 'isLoading'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'CategoriesState', 'error'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'CategoriesState', 'message'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'categories';
        categories.build();
        _$failedField = 'popularProducts';
        popularProducts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CategoriesState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
