import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:matule_v2/core/app_color.dart';
import 'package:matule_v2/core/widget/show_dialog.dart';
import 'package:matule_v2/features/login/login_model.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<LoginModel>(context);
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Center(
                      child: Text(
                        'Привет!',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        'Заполните Свои Данные Или\nПродолжите Через Социальные Медиа',
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Text(
                      'Email',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      onChanged: (value) => model.setLogin(value),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColor.background,
                          hintText: 'xyz@gmail.com',
                          hintStyle: const TextStyle(
                              fontSize: 14, color: AppColor.hint),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none)),
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Text(
                      'Пароль',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      obscureText: model.isObscureText,
                      onChanged: (value) => model.setPassword(value),
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: model.setObscureText,
                              icon: SvgPicture.asset(
                                model.isObscureText
                                    ? 'assets/icon/Eye-Close.svg'
                                    : 'assets/icon/Eye-Open.svg',
                                width: 20,
                              )),
                          filled: true,
                          fillColor: AppColor.background,
                          hintText: '••••••••',
                          hintStyle: const TextStyle(
                              fontSize: 14, color: AppColor.hint),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Воcстановить',
                              style: TextStyle(
                                  fontSize: 12, color: AppColor.subTextDark),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          onPressed: () {
                            if (!model.validateEmail()) {
                              showDialogMessage(
                                  context, 'Ошибка', 'Введите корретный Email');
                            } else if (!model.allValidate()) {
                              showDialogMessage(
                                  context, 'Ошибка', 'Введите все поля');
                            } else {
                              Navigator.pushNamed(context, '/home');
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              foregroundColor: AppColor.background,
                              backgroundColor: AppColor.accent,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    14,
                                  ),
                                  side: BorderSide.none)),
                          child: const Text(
                            'Войти',
                            style: TextStyle(
                                fontSize: 14, color: AppColor.background),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Вы впервые?',
                style: TextStyle(fontSize: 16, color: AppColor.hint),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Создать пользователя',
                    style: TextStyle(fontSize: 16, color: AppColor.text),
                  ))
            ],
          )
        ],
      )),
    );
  }
}
