import 'dart:collection';
import 'package:bakeryshop/components/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 237, 131, 211),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(45.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 25),

              // shopname
              Text(
                "Gi's Bakery",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 40,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),

              // icon
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset('lib/images/bakery.png'),
              ),
              const SizedBox(height: 25),
              // title
              Text(
                "Welcome to Gi's Bakery",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              // subtitle
              Text(
                "The very best bakery in town, where you can find the most delicious cakes, pastries, and bread.",
                style: TextStyle(color: Colors.white, fontSize: 20, height: 2),
              ),
              const SizedBox(height: 25),

              // button
              MyButton(
                text: "Get Started",
                onTap: () {
                  Navigator.pushNamed(context, '/menupage');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
