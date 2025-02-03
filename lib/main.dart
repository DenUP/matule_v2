import 'package:flutter/material.dart';
import 'package:matule_v2/core/themeData.dart';
import 'package:matule_v2/features/user/presentation/login_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

const supabaseUrl = 'https://yqvcipixnnqyhknwwwow.supabase.co';
const supabaseKey = String.fromEnvironment(
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InlxdmNpcGl4bm5xeWhrbnd3d293Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzgzODU1MzcsImV4cCI6MjA1Mzk2MTUzN30.Fs9mxI7g5rWBYdiQ6VS1O9ulihTG1IFobnEAguT4IZ4');

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseKey);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: themeData,
      routes: {
        '/': (context) => const LoginScreen(),
      },
    );
  }
}
