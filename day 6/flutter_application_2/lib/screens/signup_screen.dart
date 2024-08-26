import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/login_screen.dart';
import 'package:flutter_application_2/widgets/my_container.dart';
import 'package:flutter_application_2/widgets/my_sizebox.dart';
import 'package:flutter_application_2/widgets/my_textform.dart';
import 'package:flutter_svg/svg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF141414),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: CircleAvatar(
                  backgroundColor: const Color(0xFF1F2022),
                  child: SvgPicture.asset(
                    'assets/icons/back.svg',
                    width: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'SIGN UP ',
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontFamily: 'Teko',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Already have an account?',
                            style: TextStyle(
                              color: Color(0xFF808696),
                              fontSize: 15,
                              letterSpacing: -0.5,
                            ),
                          ),
                          TextSpan(
                            text: 'Sign in',
                            style: TextStyle(
                              color: Color.fromARGB(255, 237, 218, 13),
                              fontSize: 15,
                              letterSpacing: -0.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              myTextForm(
                keyboardType: TextInputType.emailAddress,
                labelText: 'Email',
              ),
              const SizedBox(height: 24),
              myTextForm(
                keyboardType: TextInputType.visiblePassword,
                labelText: 'Password',
                icon: Icons.visibility_off,
              ),
              const SizedBox(height: 24),
              myTextForm(
                keyboardType: TextInputType.name,
                labelText: 'Name',
              ),
              mySizedBox(height: 24),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const LoginScreen();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF8FE11),
                    fixedSize: const Size(311, 48),
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color(0xFF141414),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              mySizedBox(height: 24),
              const Center(
                child: Text(
                  'Or sign up with',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF808797),
                  ),
                ),
              ),
              mySizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  myContainer(
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icons/google.svg',
                        width: 24,
                      ),
                    ),
                  ),
                  mySizedBox(width: 16),
                  myContainer(
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icons/twitter.svg',
                        width: 24,
                      ),
                    ),
                  ),
                  mySizedBox(width: 16),
                  myContainer(
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icons/facebook.svg',
                        width: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
