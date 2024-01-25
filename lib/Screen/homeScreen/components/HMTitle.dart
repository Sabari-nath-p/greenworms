import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HMTitle extends StatelessWidget {
  const HMTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.asset(
            'assets/image/profile.png',
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          'Hello',
          style: GoogleFonts.lexend(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(255, 255, 255, 1),
            letterSpacing: 0,
          ),
        ),
        Text(
          'Anandu',
          style: GoogleFonts.lexend(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(255, 255, 255, 1),
            letterSpacing: 0,
          ),
        ),
        Text(
          ',',
          style: GoogleFonts.ubuntu(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(255, 255, 255, 1),
            letterSpacing: 0,
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerRight,
            width: 20,
            height: 20,
            child: Image.asset(
              'assets/image/bell.png',
              width: 20,
              height: 20,
            ),
          ),
        )
        
      ],
    );
  }
}
