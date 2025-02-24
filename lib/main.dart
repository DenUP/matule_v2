import 'package:flutter/material.dart';
import 'package:matule_v2/core/app_theme.dart';
import 'package:matule_v2/features/home/home_screen.dart';
import 'package:matule_v2/features/login/login_model.dart';
import 'package:matule_v2/features/login/login_screen.dart';
import 'package:provider/provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://hocmobhnhmeqwrcltwdu.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhvY21vYmhuaG1lcXdyY2x0d2R1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTcxNTA5MTYsImV4cCI6MjAzMjcyNjkxNn0.b5C6PVC2t1Sax4qI5-xY1nTxvSjLciYEZHxTpTHKvQ0',
  );

  runApp(const App());
}

// Get a reference your Supabase client
final supabase = Supabase.instance.client;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => ChangeNotifierProvider(
              child: const LoginScreen(),
              create: (context) => LoginModel(),
            ),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
