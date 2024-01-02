import 'package:flutter/material.dart';

class EstateView extends StatelessWidget {
  const EstateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: 'null',
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/estate2.jpg'))),
            ),
          ),
          Container(
            height: 100,
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
