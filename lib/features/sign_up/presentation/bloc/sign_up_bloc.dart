import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/sign_up_use_case.dart';
import 'sign_up.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpUseCase _signUpUseCase;

  void clearMessage() {
    add(ClearMessage());
  }

  void addResetPushOTPValueEvent() {
    add(ResetPushOTPValueEvent());
  }

  void addSendSignUpDateEvent({
    required String number,
    required String name,
    required String address,
  }) {
    add(SendSignUpDataEvent(
      (b) => b
        ..number = number
        ..name = name
        ..address = address,
    ));
  }

  @factoryMethod
  SignUpBloc(
    this._signUpUseCase,
  ) : super(SignUpState.initial()) {
    on<SignUpEvent>((event, emit) async {
      /*** ClearMessage **/
      if (event is ClearMessage) {
        emit(SignUpState.clearMessage(currentState: state));
      }

      /*** ResetPushOTPValueEvent **/
      if (event is ResetPushOTPValueEvent) {
        emit(state.rebuild((b) => b..pushOTPPage = false));
      }

      /*** SendSignUpDataEvent **/
      if (event is SendSignUpDataEvent) {
        emit(state.rebuild((b) => b..isLoading = true));

        final result = await _signUpUseCase(
          SignUpUseCaseParams(
            number: event.number,
            name: event.name,
            address: event.address,
          ),
        );

        result.fold(
          (failure) => emit(
            SignUpState.failure(
              message: failure.error,
              currentState: state,
            ),
          ),
          (success) => emit(
            state.rebuild(
              (b) => b
                ..isLoading = false
                ..pushOTPPage = true,
            ),
          ),
        );
      }
    });
  }
}
