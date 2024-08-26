import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/login_screen.dart';
import 'package:flutter_application_2/screens/signup_screen.dart';
import 'package:flutter_application_2/widgets/my_sizebox.dart';
import 'package:flutter_svg/svg.dart';

class ThirdWelcomeScreen extends StatelessWidget {
  const ThirdWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF141414),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Stack(
                children: [
                  SvgPicture.asset(
                    'assets/images/pattern.svg',
                    width: 472,
                    height: 472,
                  ),
                  // Positioned(
                  //   top: 80,
                  //   left: 60,
                  //   child: Image.asset(
                  //     'assets/images/cup.png',
                  //     width: 240,
                  //     height: 240,
                  //   ),
                  // ),
                  // Positioned(
                  //   top: 91,
                  //   left: 60,
                  //   child: Image.asset(
                  //     'assets/icons/sports1.png',
                  //     width: 48,
                  //     height: 48,
                  //   ),
                  // ),
                  // Positioned(
                  //   top: 160,
                  //   left: 280,
                  //   child: Image.asset(
                  //     'assets/icons/sports2.png',
                  //     width: 64,
                  //     height: 64,
                  //   ),
                  // ),
                  // Positioned(
                  //   top: 248,
                  //   left: 30,
                  //   child: Image.asset(
                  //     'assets/icons/sports3.png',
                  //     width: 72,
                  //     height: 72,
                  //   ),
                  // ),
                  // Positioned(
                  //   top: 290,
                  //   left: 260,
                  //   child: Image.asset(
                  //     'assets/icons/sports4.png',
                  //     width: 40,
                  //     height: 40,
                  //   ),
                  // ),
                  Positioned(
                    top: 44,
                    child: Image.asset(
                      'assets/images/illustration.png',
                      width: 375,
                      height: 416,
                    ),
                  ),
                ],
              ),
              const Text(
                'MONSTER LIVESCORE',
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                  fontFamily: 'Teko',
                  fontWeight: FontWeight.w600,
                ),
              ),
              // const SizedBox(height: 16),
              mySizedBox(height: 16),
              const SizedBox(
                width: 311,
                child: Text(
                  'We’d like to check that your preferences and details are accurate.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF808696),
                    fontSize: 14,
                    letterSpacing: -0.5,
                  ),
                ),
              ),
              // const SizedBox(height: 16),
              mySizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF8FE11),
                  fixedSize: const Size(311, 48),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Color(0xFF141414),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              mySizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const SignUpScreen();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.transparent,
                  fixedSize: const Size(311, 48),
                  side: const BorderSide(
                      color: Colors.yellow, width: 2), // Text color
                ),
                child: const Text(
                  'Sign for Monster Livescore',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
