import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: const Text(
          'User Login',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 10,
        shadowColor: const Color.fromARGB(255, 210, 133, 192),
        backgroundColor: const Color.fromARGB(255, 167, 21, 113),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Image(
              image: AssetImage("assets/logo.png"),
              height: 300,
              width: 300,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                showCursor: false,
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32)),
                ),
              ),
            ),
            const SizedBox(height: 20), // Spacing between Username and Password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                showCursor: false,
                obscureText: true, // Obscure text for Password
                decoration: InputDecoration(
                  labelText: 'Password', // Label text for Password
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32)), // Border style
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
