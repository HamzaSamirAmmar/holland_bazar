// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SplashState extends SplashState {
  @override
  final bool? showOnBoardingStatus;
  @override
  final bool? isUserAuthenticated;
  @override
  final bool isLoading;
  @override
  final bool error;
  @override
  final String message;

  factory _$SplashState([void Function(SplashStateBuilder)? updates]) =>
      (new SplashStateBuilder()..update(updates))._build();

  _$SplashState._(
      {this.showOnBoardingStatus,
      this.isUserAuthenticated,
      required this.isLoading,
      required this.error,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        isLoading, r'SplashState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(error, r'SplashState', 'error');
    BuiltValueNullFieldError.checkNotNull(message, r'SplashState', 'message');
  }

  @override
  SplashState rebuild(void Function(SplashStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SplashStateBuilder toBuilder() => new SplashStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SplashState &&
        showOnBoardingStatus == other.showOnBoardingStatus &&
        isUserAuthenticated == other.isUserAuthenticated &&
        isLoading == other.isLoading &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, showOnBoardingStatus.hashCode);
    _$hash = $jc(_$hash, isUserAuthenticated.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SplashState')
          ..add('showOnBoardingStatus', showOnBoardingStatus)
          ..add('isUserAuthenticated', isUserAuthenticated)
          ..add('isLoading', isLoading)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class SplashStateBuilder implements Builder<SplashState, SplashStateBuilder> {
  _$SplashState? _$v;

  bool? _showOnBoardingStatus;
  bool? get showOnBoardingStatus => _$this._showOnBoardingStatus;
  set showOnBoardingStatus(bool? showOnBoardingStatus) =>
      _$this._showOnBoardingStatus = showOnBoardingStatus;

  bool? _isUserAuthenticated;
  bool? get isUserAuthenticated => _$this._isUserAuthenticated;
  set isUserAuthenticated(bool? isUserAuthenticated) =>
      _$this._isUserAuthenticated = isUserAuthenticated;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  SplashStateBuilder();

  SplashStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _showOnBoardingStatus = $v.showOnBoardingStatus;
      _isUserAuthenticated = $v.isUserAuthenticated;
      _isLoading = $v.isLoading;
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SplashState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SplashState;
  }

  @override
  void update(void Function(SplashStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SplashState build() => _build();

  _$SplashState _build() {
    final _$result = _$v ??
        new _$SplashState._(
            showOnBoardingStatus: showOnBoardingStatus,
            isUserAuthenticated: isUserAuthenticated,
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'SplashState', 'isLoading'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'SplashState', 'error'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'SplashState', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
