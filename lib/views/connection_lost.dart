import 'package:flutter/material.dart';

class ConnectionLostView extends StatelessWidget {
  const ConnectionLostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              bottom: 114,
              child: Image.asset("assets/nodata_found.png")),
          Positioned(
              bottom: 326,
              child: Image.asset("assets/person.png", height: 232,)),
          Positioned(
              top: 119,
              child: Image.asset("assets/clouds.png", height: 99,)),
          Positioned(
              top: 119,
              right: 30,
              child: Image.asset("assets/kite.png", width: 124,)),
        ],
      ),
    );
  }
}
