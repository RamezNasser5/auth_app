import 'package:auth_app/features/auth_feature/logic/auth_bloc/auth_bloc.dart';
import 'package:auth_app/features/auth_feature/presentation/views/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(const AuthApp());
}

class AuthApp extends StatelessWidget {
  const AuthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BlocProvider(
          create: (context) => AuthBloc(),
          child: LoginPage(),
        ),
      ),
    );
  }
}
