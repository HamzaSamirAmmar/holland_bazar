import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/reset_password_use_case.dart';
import 'password.dart';

@injectable
class PasswordBloc extends Bloc<PasswordEvent, PasswordState> {
  final ResetPasswordUseCase _resetPasswordUseCase;

  void clearMessage() {
    add(ClearMessage());
  }

  void addResetPasswordEvent({required String password}) {
    add(ResetPasswordEvent(
      (b) => b..password = password,
    ));
  }

  @factoryMethod
  PasswordBloc(
    this._resetPasswordUseCase,
  ) : super(PasswordState.initial()) {
    on<PasswordEvent>((event, emit) async {
      /*** ClearMessage **/
      if (event is ClearMessage) {
        emit(PasswordState.clearMessage(currentState: state));
      }

      /*** ResetPasswordEvent **/
      if (event is ResetPasswordEvent) {
        emit(state.rebuild((b) => b..isLoading = true));

        final result = await _resetPasswordUseCase(
          ResetPasswordUseCaseParams(
            password: event.password,
          ),
        );

        result.fold(
          (failure) => emit(
            PasswordState.failure(
              message: failure.error,
              currentState: state,
            ),
          ),
          (success) => emit(
            state.rebuild(
              (b) => b
                ..message = "Password reset successfully"
                ..isLoading = false
                ..success = true,
            ),
          ),
        );
      }
    });
  }
}
