import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.logindata,
  });

  final String logindata;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Hello",
              style: GoogleFonts.poppins(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              logindata.toUpperCase(),
              style: GoogleFonts.poppins(
                  color: Colors.red, fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "watch your favourite movie...",
          style: GoogleFonts.poppins(
            color: Colors.red,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
