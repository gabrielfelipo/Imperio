// import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:flutter/material.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _controller = LoginController();
  final TextEditingController _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(flex: 1),
            const Text(
              'Qual seu e-mail?',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  color: Color(0xFF000000)),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 22),
            SizedBox(
                height: 57,
                child: TextField(
                  controller: _textController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Insira sua senha',
                  ),
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                )),
            const SizedBox(height: 15),
            FractionallySizedBox(
              widthFactor: 0.8,
              child: SizedBox(
                height: 55,
                width: 296,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF5D70A)),
                  onPressed: () {
                    String username = _textController.text;
                    print('username: $username');
                  },
                  child: const Text('Login'),
                ),
              ),
            ),
            const Spacer(flex: 5)
          ],
        ),
      ),
    );
  }
}
