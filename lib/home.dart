import 'package:flutter/material.dart';
import 'package:lottie_rive_use_case/lottie/first_screen.dart';
import 'package:lottie_rive_use_case/rive/login_screen.dart';
import 'package:lottie_rive_use_case/rive/refresh_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose use case'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              child: const Text('Lottie'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LottieFirstScreen(),
                ),
              ),
            ),
            FilledButton(
              child: const Text('Rive Login'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RiveLoginScreen(),
                ),
              ),
            ),
            FilledButton(
              child: const Text('Rive Refresh'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RiveRefreshScreen(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}