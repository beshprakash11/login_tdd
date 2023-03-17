import 'package:flutter/material.dart';
import 'package:login_tdd/validator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  GlobalKey _key = GlobalKey();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        leading: null,
      ),
      body: Form(
        key: _key,
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _emailController,
                key: const ValueKey('email_id'),
                decoration: const InputDecoration(
                  hintText: "Enter Email id",
                ),
                validator: (value) => Validator.validatEmail(value ?? ""),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _passwordController,
                key: const ValueKey('password'),
                decoration: const InputDecoration(
                  hintText: "Enter your password",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: Center(
                    child: Text('Login'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
