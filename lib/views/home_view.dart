import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:livedemo/auth/bloc/auth_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('You are logged in'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.read<AuthBloc>().add(const AuthEventLogout());
          },
          child: const Text('Log out'),
        ),
      ),
    );
  }
}
