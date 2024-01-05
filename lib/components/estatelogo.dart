import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//estate text logo
class EstateLogo extends StatelessWidget {
  const EstateLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.home,
          color: Color(0xff87D8DA),
        ),
        Text(
          'Home',
          style: GoogleFonts.roboto(
              fontSize: 20,
              color: const Color(0xff87D8DA),
              fontWeight: FontWeight.w500),
        ),
        Text(
          'bhase',
          style: GoogleFonts.roboto(
              fontSize: 20,
              color: const Color(0xffDCAE46),
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
