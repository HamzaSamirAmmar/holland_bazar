import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/login_use_case.dart';
import 'login_event.dart';
import 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase _loginUseCase;

  void clearMessage() {
    add(ClearMessage());
  }

  void addPostLoginEvent({
    required String number,
    required String password,
  }) {
    add(
      PostLoginEvent((b) => b
        ..number = number
        ..password = password),
    );
  }

  @factoryMethod
  LoginBloc(this._loginUseCase) : super(LoginState.initial()) {
    on<LoginEvent>(
      (event, emit) async {
        /*** ClearMessage ***/
        if (event is ClearMessage) {
          emit(LoginState.clearMessage(currentState: state));
        }

        /*** PostLoginEvent ***/
        if (event is PostLoginEvent) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _loginUseCase(
            ParamsLoginUseCase(
              number: event.number,
              password: event.password,
            ),
          );

          result.fold(
            (failure) => emit(
              LoginState.failure(
                message: failure.error,
                currentState: state,
              ),
            ),
            (success) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..success = true,
              ),
            ),
          );
        }
      },
    );
  }
}
