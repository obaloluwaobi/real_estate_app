import 'package:flutter/material.dart';
import 'package:real_estate_app/components/estatecard.dart';
import 'package:real_estate_app/components/estatelogo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f7f9),
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: const Color(0xfff6f7f9),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(Icons.notifications_outlined),
          )
        ],
        title: const EstateLogo(),
      ),
      body: ListView(
        children: const [
          SearchWidget(),
          SizedBox(
            height: 15,
          ),
          EstateCardView(),
          SizedBox(
            height: 25,
          ),
          EstateSecondCard(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular today',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Other',
                      style: TextStyle(
                          fontSize: 17,
                          color: Color(0xff87D8DA),
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 18,
                      color: Color(0xff87D8DA),
                    )
                  ],
                ),
              ],
            ),
          ),
          EstateThirdCard(),
        ],
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: TextFormField(
        decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            hintText: 'Search Here..',
            hintStyle: TextStyle(color: Colors.grey[600]),
            suffixIcon: Icon(
              Icons.search,
              color: Colors.grey[600],
            )),
      ),
    );
  }
}
