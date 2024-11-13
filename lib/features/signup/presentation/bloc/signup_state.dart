part of 'signup_bloc.dart';

@freezed
sealed class SignupState with _$SignupState {
  factory SignupState.initial() =>
      SignupState(email: '', displayName: '', password: '');

  const factory SignupState({
    required final String email,
    required final String displayName,
    required final String password,
    @Default('') final String? errorMessage,
    @Default(FormType.signUp) final FormType formType,
    @Default(UserType.individual) final UserType userType,
    @Default(false) final bool showError,
    @Default(false) final bool isFormSuccessful,
    @Default(true) final bool obscurePassword,
    @Default(true) final bool isEmailValid,
    @Default(true) final bool isPasswordValid,
    @Default(false) final bool isFormValid,
    @Default(true) final bool isNameValid,
    @Default(false) final bool isFormValidateFailed,
    @Default(false) final bool isLoading,
  }) = _SignupState;
}

enum FormType { signIn, signUp }
