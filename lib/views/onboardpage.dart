import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate_app/components/estatelogo.dart';
import 'package:real_estate_app/views/bottomnav.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff6f7f9),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 55, left: 20, right: 20),
                child: FadeInUp(
                  duration: const Duration(seconds: 2),
                  animate: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const EstateLogo(),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            'Looking',
                            style: GoogleFonts.roboto(
                                color: const Color(0xff87D8DA),
                                fontSize: 30,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            ' for an',
                            style: GoogleFonts.roboto(
                                color: const Color(0xffDCAE46),
                                fontSize: 30,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Text(
                        'elegant house this \nis the place',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      //

                      Text(
                        'Welcome friends, are you looking \nfor us?',
                        style: GoogleFonts.roboto(
                            color: Colors.black45,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Congratulations you have found us',
                        style: GoogleFonts.roboto(
                            color: Colors.black45,
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 200.0),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const BottomNav()));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff87D8DA)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Next ',
                                  style: GoogleFonts.roboto(
                                      color: Colors.white, fontSize: 20),
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ), //Expanded(child: Container()),
              FadeInDown(
                child: Image.asset('assets/splash.png'),
              ),
            ],
          ),
        ));
  }
}
