import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieSecondScreen extends StatefulWidget {
  const LottieSecondScreen({super.key});

  @override
  State<LottieSecondScreen> createState() => _LottieSecondScreenState();
}

class _LottieSecondScreenState extends State<LottieSecondScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        duration: Duration(microseconds: 500000), vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (checked == false) {
            checked = true;
            setState(() {});
            _controller.forward();
          } else {
            checked = false;
            setState(() {});
            _controller.reverse();
          }
        },
      ),
      body: Center(
        child: checked
            ? Container(
                height: 500,
                child: Lottie.network(
                    'https://lottie.host/8dd7caa8-96f2-44a6-b70d-4e34524d6889/XZouxrPXAp.json',
                    fit: BoxFit.cover,
                    controller: _controller),
              )
            : Lottie.network(
                'https://lottie.host/0aa291d5-3437-4fc1-83a8-2a879a30c1c0/VGBb208Jgr.json',
              ),
      ),
    );
  }
}