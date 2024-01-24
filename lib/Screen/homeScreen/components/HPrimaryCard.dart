import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class HPrimaryCard extends StatelessWidget {
  const HPrimaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 100.h,
      decoration: BoxDecoration(),
      child: Stack(
        children: [
          Positioned(
            child: Container(
              width: 100.w,
              height: 212,
              decoration: BoxDecoration(
                color: Color.fromRGBO(2, 97, 99, 1),
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 23,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(2, 97, 99, 1),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/image/profile.png',
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 72,
            child: Container(
              width: 139,
              height: 30,
              child: Row(
                children: [
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
                ],
              ),
            ),
          ),
          Positioned(
            top: 75,
            left: 328,
            child: Container(
              width: 20,
              height: 20,
              padding: EdgeInsets.fromLTRB(0, 0.53, 0, 0.41),
              child: Image.asset(
                'assets/image/bell.png',
                width: 20,
                height: 20,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 337,
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(244, 103, 103, 1),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/image/reddot.png',
                  width: 10,
                  height: 10,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 147,
            left: 26,
            child: Container(
              width: 155,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                'assets/image/card.png',
                width: 154,
                height: 119,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            top: 147,
            left: 196,
            child: Container(
              width: 155,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                'assets/image/small.png',
                width: 155,
                height: 119,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 296,
            left: 16,
            child: Container(
              width: 95,
              height: 25,
              decoration: BoxDecoration(),
              child: Center(
                child: Text(
                  'Joblist',
                  style: GoogleFonts.lexend(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0,
                      color: Color.fromRGBO(0, 0, 0, 1)),
                ),
              ),
            ),
          ),
          Positioned(
            top: 354,
            left: 15,
            child: Container(
              width: 346,
              height: 307,
              padding: EdgeInsets.fromLTRB(26, 33, 26, 33),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: Color.fromRGBO(0, 124, 88, 0.2), width: 1),
              ),
            ),
          ),
          Positioned(
            top: 384,
            left: 48,
            child: Container(
              width: 280,
              height: 210,
              decoration: BoxDecoration(),
              child: Image.asset(
                'assets/image/list.png',
                width: 280,
                height: 210,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 600,
            left: 190,
            child: Container(
              width: 127,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border:
                    Border.all(color: Color.fromRGBO(3, 97, 99, 1), width: 1),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  primary: Color.fromRGBO(3, 97, 99, 1),
                ),
                child: Text(
                  'Accept',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 600,
            left: 48,
            child: Container(
              width: 127,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                    color: Color.fromRGBO(244, 103, 103, 1), width: 1),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  primary: Color.fromRGBO(0, 0, 0, 0),
                ),
                child: Text(
                  'Decline',
                  style: TextStyle(
                    color: Color.fromRGBO(244, 103, 103, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
