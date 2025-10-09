import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/core/theme/app_palette.dart';
import 'package:laza/features/auth/data/models/register.dart';
import 'package:laza/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:laza/features/auth/presentation/cubit/auth_states.dart';
import 'package:laza/features/auth/presentation/screens/otp_screen.dart';
import '../../validaion/validation.dart';
import '../widgets/custom_button.dart';
import '../widgets/password_field.dart';
import '../widgets/text_field.dart';
import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Map<String, List<String>> serverFieldErrors = {};

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _onRegisterPressed(BuildContext context) {
    FocusScope.of(context).unfocus();
    final model = RegisterModel(
      firstName: firstNameController.text.trim(),
      lastName: lastNameController.text.trim(),
      email: emailController.text.trim(),
      password: passwordController.text,
    );
    // call cubit (cubit's validation will run too)
    context.read<AuthCubit>().register(model);
  }

  String? _getFieldError(String fieldName, String? localError) {
    final server = serverFieldErrors[fieldName]?.join('\n');
    return server ?? localError;
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocConsumer<AuthCubit, AuthStates>(
        listener: (context, state) {
          state.whenOrNull(
            success: (_) {
              // ScaffoldMessenger.of(context).showSnackBar(
              //   const SnackBar(
              //     content: Text('✅ Account created successfully!'),
              //     backgroundColor: Colors.green,
              //     behavior: SnackBarBehavior.floating,
              //   ),
              // );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (c) => BlocProvider.value(
                    value: context.read<AuthCubit>(),
                    child: OtpScreen(email: emailController.text.trim()),
                  ),
                ),
              );
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  backgroundColor: Colors.red,
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            fieldErrors: (errors) {
              setState(() {
                serverFieldErrors = errors;
              });
              // trigger validators to show messages
              formKey.currentState?.validate();
            },
          );
        },
        builder: (context, state) {
          final isLoading = state.maybeWhen(
            loading: () => true,
            orElse: () => false,
          );

          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            children: [
              SizedBox(height: screenHeight * 0.08),
              const Text(
                'Create New Account',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: AppPalette.appColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenHeight * 0.06),
              Form(
                key: formKey,
                child: Column(
                  spacing: 18,
                  children: [
                    CustomTextFormField(
                      labelText: 'First Name',
                      controller: firstNameController,
                      type: TextInputType.name,
                      validator: (value) {
                        final localError = Validation()
                            .validateRegisterModel(
                              RegisterModel(
                                firstName: value,
                                lastName: '',
                                email: '',
                                password: '',
                              ),
                            )['firstName']
                            ?.join('\n');
                        return _getFieldError('firstName', localError);
                      },
                      onFieldSubmitted: (_) =>
                          FocusScope.of(context).nextFocus(),
                    ),

                    CustomTextFormField(
                      labelText: 'Last Name',
                      controller: lastNameController,
                      type: TextInputType.name,
                      validator: (value) {
                        final localError = Validation()
                            .validateRegisterModel(
                              RegisterModel(
                                firstName: '',
                                lastName: value,
                                email: '',
                                password: '',
                              ),
                            )['lastName']
                            ?.join('\n');
                        return _getFieldError('lastName', localError);
                      },
                      onFieldSubmitted: (_) =>
                          FocusScope.of(context).nextFocus(),
                    ),

                    CustomTextFormField(
                      labelText: 'Email',
                      controller: emailController,
                      type: TextInputType.emailAddress,
                      validator: (value) {
                        final localError = Validation()
                            .validateRegisterModel(
                              RegisterModel(
                                firstName: '',
                                lastName: '',
                                email: value,
                                password: '',
                              ),
                            )['email']
                            ?.join('\n');
                        return _getFieldError('email', localError);
                      },
                      onFieldSubmitted: (_) =>
                          FocusScope.of(context).nextFocus(),
                    ),

                    CustomPasswordFormFiled(
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      controller: passwordController,
                      validator: (value) {
                        final localError = Validation()
                            .validateRegisterModel(
                              RegisterModel(
                                firstName: '',
                                lastName: '',
                                email: '',
                                password: value,
                              ),
                            )['password']
                            ?.join('\n');
                        return _getFieldError('password', localError);
                      },
                      onFieldSubmitted: (_) => _onRegisterPressed(context),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
              const Text(
                'By signing up, you agree to our Terms & Conditions and Privacy Policy.',
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : customButton(
                        label: 'Sign Up',
                        backgroundColor: AppPalette.appColor,
                        function: () => _onRegisterPressed(context),
                      ),
              ),
              SizedBox(height: screenHeight * 0.15),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => const LoginScreen()),
                      );
                    },
                    child: const Text(
                      'Log In',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppPalette.violetColor,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
