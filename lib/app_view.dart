import 'blocs/authentication_bloc/authentication_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screens/auth/views/welcome_screen.dart';
import 'screens/home/views/home_screen.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Boba Delivery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          background: Color.fromARGB(255, 240, 231, 224),
          onBackground: Color.fromARGB(255, 80, 58, 43),
          primary: Color.fromARGB(255, 199,130,107),
          onPrimary: Colors.white
        )
      ),
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if(state.status == AuthenticationState) {
            return HomeScreen();
          } else {
            return WelcomeScreen();
          }
        }),
    );
  }
}