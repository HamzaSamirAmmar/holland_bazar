import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/send_code_use_case.dart';
import 'otp.dart';

@injectable
class OTPBloc extends Bloc<OTPEvent, OTPState> {
  final SendCodeUseCase _sendCodeUseCase;

  void clearMessage() {
    add(ClearMessage());
  }

  void addSendSignUpDateEvent({
    required String number,
  }) {
    add(SendCodeEvent(
      (b) => b
        ..number = number,
    ));
  }

  @factoryMethod
  OTPBloc(
    this._sendCodeUseCase,
  ) : super(OTPState.initial()) {
    on<OTPEvent>((event, emit) async {
      /*** ClearMessage **/
      if (event is ClearMessage) {
        emit(OTPState.clearMessage(currentState: state));
      }

      /*** SendCodeEvent **/
      if (event is SendCodeEvent) {
        emit(state.rebuild((b) => b..isLoading = true));

        final result = await _sendCodeUseCase(
          SendCodeUseCaseParams(
            number: event.number,
          ),
        );

        result.fold(
          (failure) => emit(
            OTPState.failure(
              message: failure.error,
              currentState: state,
            ),
          ),
          (success) => emit(
            state.rebuild(
              (b) => b
                ..isLoading = false
                ..isCodeVerified = true,
            ),
          ),
        );
      }
    });
  }
}
