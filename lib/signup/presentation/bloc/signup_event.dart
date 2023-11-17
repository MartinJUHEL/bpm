part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {

  const factory SignupEvent.initialized(FormType formType,
      UserType userType)= _Initialized;

  const factory SignupEvent.emailChanged(String email) = _EmailChanged;

  const factory SignupEvent.passwordChanged(String password) = _PasswordChanged;

  const factory SignupEvent.nameChanged(String name) = _NameChanged;

  const factory SignupEvent.submitted() = _Submitted;

  const factory SignupEvent.obscurePasswordToggled() =_ObscurePasswordToggled;

  const factory SignupEvent.formTypeToggled(FormType form) = _FormTypeToggled;

  const factory SignupEvent.succeeded() = _Succeeded;
}


