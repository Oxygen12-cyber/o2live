import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.empty(),
      builder: (context, snapshot) {
        return Scaffold();
      },
    );
  }
}
