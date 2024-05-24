import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/modules/users/presentation/enums/login_state.view.dart';
import 'package:imperio/app/modules/users/presentation/pages/login/login_controller.dart';
import 'package:imperio/core/components/primary_button.view.dart';

class LoginPage extends StatefulWidget {
  final LoginStateView state;

  const LoginPage({super.key, required this.state});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _textController = TextEditingController();
  final controler = Modular.get<LoginController>();

  @override
  void initState() {
    super.initState();
    controler.postData();
    setState(() {});
  }

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
            Text(
              widget.state.title,
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat',
                  color: Color(0xFF000000)),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 22),
            SizedBox(
                height: 57,
                child: TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    labelText: widget.state.placeHolder,
                  ),
                  style: const TextStyle(fontSize: 14),
                  textAlign: TextAlign.left,
                )),
            const SizedBox(height: 15),
            ImperioButton(
              text: 'Continuar',
              model: ImperioButtonViewModel.primary,
              height: 55,
              width: double.infinity,
              onPressed: () {
                controler.next(widget.state);
              },
              backgroundColor: const Color(0xFFF5D70A),
            ),
            const Spacer(flex: 5)
          ],
        ),
      ),
    );
  }
}
