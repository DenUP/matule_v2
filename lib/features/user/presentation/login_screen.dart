import 'package:flutter/material.dart';
import 'package:matule_v2/core/appColors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final _loginController = TextEditingController();
final _passwordControlelr = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.fromLTRB(20, 120, 20, 200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Привет!",
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Заполните Свои Данные Или\nПродолжите Через Социальные Медиа',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Text(
              'Email',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
                controller: _loginController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Appcolors.background,
                    hintText: 'xyz@gmail.com',
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(15)))))
          ],
        ),
      )),
    );
  }
}
