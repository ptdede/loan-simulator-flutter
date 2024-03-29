import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loan_simulator/screens/auth/auth_controller.dart';
import 'package:loan_simulator/widgets/lc_button.dart';
import 'package:loan_simulator/widgets/lc_text_field.dart';
import 'package:loan_simulator/widgets/logo.dart';

class RegisterScreen extends HookConsumerWidget {
  RegisterScreen({
    super.key,
    this.onRedirectToSignin,
    this.onRegisterSucceed,
  });

  final VoidCallback? onRedirectToSignin;
  final VoidCallback? onRegisterSucceed;

  final _formKey = GlobalKey<FormState>();

  void _listenRegisterState(BuildContext context, WidgetRef ref) {
    ref.listen(
        AuthController.provider.select(
          (value) => (
            isRegisterSuccess: value.isRegisterSuccess,
            token: value.token,
            errorAuth: value.errorAuth,
            isLoading: value.isLoading,
          ),
        ), (previous, next) {
      if (!next.isLoading && next.isRegisterSuccess) {
        final snackBar = SnackBar(
          backgroundColor: Colors.blue,
          content: Text('Register success! token = ${next.token}'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);

        onRegisterSucceed?.call();
      } else if (!next.isLoading &&
          !next.isRegisterSuccess &&
          next.errorAuth.isNotEmpty) {
        final snackBar = SnackBar(
          backgroundColor: Colors.red,
          content: Text(next.errorAuth),
        );

        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _listenRegisterState(context, ref);

    final emailFieldController = useTextEditingController(text: '');
    final passwordFieldController = useTextEditingController(text: '');
    final isHidePassword = useState(true);
    final isHideConfirmPassword = useState(true);

    final state = ref.watch(
      AuthController.provider.select(
        (value) => (
          email: value.email,
          password: value.password,
        ),
      ),
    );

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(AuthController.provider.notifier).onScreenLoaded();
      });
      return null;
    }, []);

    useEffect(() {
      emailFieldController.text = state.email;
      passwordFieldController.text = state.password;
      return null;
    }, [state]);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Logo(),
              const SizedBox(height: 48),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    LcTextField(
                      controller: emailFieldController,
                      label: 'email',
                      placeholder: 'ex: eve.holt@reqres.in',
                      inputType: TextInputType.emailAddress,
                      leading: const Icon(Icons.mail),
                      onChanged: (value) => ref
                          .read(AuthController.provider.notifier)
                          .onUpdateEmail(value),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'email is required';
                        }

                        const pattern =
                            r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
                            r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
                            r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
                            r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
                            r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
                            r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
                            r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
                        final regex = RegExp(pattern);

                        if (!regex.hasMatch(value)) {
                          return 'email must be valid';
                        }

                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    LcTextField.password(
                      controller: passwordFieldController,
                      label: 'password',
                      placeholder: 'input password',
                      inputType: TextInputType.text,
                      leading: const Icon(Icons.lock),
                      obscureText: isHidePassword.value,
                      onChanged: (value) => ref
                          .read(AuthController.provider.notifier)
                          .onUpdatePassword(value),
                      trailing: IconButton(
                        icon: Icon(
                          isHidePassword.value
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                        ),
                        onPressed: () =>
                            isHidePassword.value = !isHidePassword.value,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'password is required';
                        }

                        if (value.length < 5) {
                          return 'password must not less than 8 characters';
                        }

                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    LcTextField.password(
                      label: 'confirm password',
                      placeholder: 'input password',
                      inputType: TextInputType.text,
                      leading: const Icon(Icons.lock),
                      obscureText: isHideConfirmPassword.value,
                      trailing: IconButton(
                        icon: Icon(
                          isHideConfirmPassword.value
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                        ),
                        onPressed: () => isHideConfirmPassword.value =
                            !isHideConfirmPassword.value,
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'confirm your password';
                        }

                        if (value != passwordFieldController.text) {
                          return 'password not match';
                        }

                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    LcButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ref
                              .read(AuthController.provider.notifier)
                              .onRegisterUser();
                        }
                      },
                      isLoading: ref.watch(
                        AuthController.provider
                            .select((value) => value.isLoading),
                      ),
                      child: const Text('REGISTER'),
                    ),
                    const SizedBox(height: 32),
                    _buildSignupText(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSignupText() {
    return RichText(
      text: TextSpan(
        text: "Already have an account? ",
        style: const TextStyle(
          color: Colors.black,
        ),
        children: [
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                onRedirectToSignin?.call();
              },
            text: 'Login Here',
            style: const TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
