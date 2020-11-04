import 'package:flutter/material.dart';

class GettingStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            children: [
              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: 150,
              //   decoration: BoxDecoration(
              //       image: DecorationImage(image: AssetImage("images/askme.png"))),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
