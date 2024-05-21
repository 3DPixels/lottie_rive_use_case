import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:lottie_rive_use_case/lottie/second_screen.dart';

class LottieFirstScreen extends StatelessWidget {
  const LottieFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
      ),
      body: Center(
        child: Lottie.network(
            'https://lottie.host/ae091c10-4984-4393-b758-07f7da8329b4/zpA0WKiw9E.json'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LottieSecondScreen(),
          ),
        ),
      ),
    );
  }
}