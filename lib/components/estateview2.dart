import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_estate_app/components/estateview.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EstateSecondView extends StatefulWidget {
  const EstateSecondView({super.key});

  @override
  State<EstateSecondView> createState() => _EstateSecondViewState();
}

class _EstateSecondViewState extends State<EstateSecondView> {
  late final WebViewController controller;

  void initState() {
    // TODO: implement initState
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(
          'https://www.google.com/maps/search/real+estate+near+usa/@33.5527735,-117.9679086,4z/data=!3m1!4b1?entry=ttu'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              color: const Color(0xfff6f7f9),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 30),
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/estate1.jpg'),
                    )),
                    child: const Extraview(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20),
                    child: RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        itemCount: 5,
                        itemSize: 30,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                        itemBuilder: (context, _) {
                          return const Icon(
                            Icons.star,
                            color: Colors.amber,
                          );
                        },
                        onRatingUpdate: (rating) {}),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FadeInUp(
                          child: Text(
                            '123 Jolte Zahro',
                            style: GoogleFonts.roboto(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeInUp(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      child: Text(
                        'Description',
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeInUp(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      child: Text(
                        'It is a long established fact that a reader will be distracted by the readable content of a page when looking at Read more',
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: Colors.black54,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    height: 400,
                    child: WebViewWidget(
                      controller: controller,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 100,
            color: Colors.white,
            child: FadeInDown(
              child: ListTile(
                title: const Text('Price'),
                tileColor: Colors.black,
                subtitle: Text(
                  '\$320',
                  style: GoogleFonts.roboto(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                trailing: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff87D8DA)),
                    child: Text(
                      'Pay now',
                      style:
                          GoogleFonts.roboto(color: Colors.white, fontSize: 18),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
