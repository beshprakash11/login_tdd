import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
      ),
      body: Column(
        children: <Widget>[
          TextFormField(
            controller: _emailController,
            key: const ValueKey('email_id'),
            decoration: const InputDecoration(
              hintText: "Enter Email id",
            ),
          ),
          TextFormField(
            controller: _emailController,
            key: const ValueKey('password'),
            decoration: const InputDecoration(
              hintText: "Enter your password",
            ),
          ),
        ],
      ),
    );
  }
}
