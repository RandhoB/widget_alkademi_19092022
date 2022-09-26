import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifikasi extends StatelessWidget {
  const Notifikasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Menu Notification",
                style: GoogleFonts.arya().copyWith(
                  fontSize: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
