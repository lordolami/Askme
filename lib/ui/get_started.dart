import 'dart:io';
// ignore: unused_import
import 'package:askme_app/ui/data/OnboardingData.dart';
import 'package:askme_app/ui/data/flutteronboardingscreens.dart';
import 'package:flutter/material.dart';


class GetStarted extends StatefulWidget {
  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {

  List<SliderModel> mySLides = new List<SliderModel>();
  int slideIndex = 0;
  PageController controller;

  Widget _buildPageIndicator(bool isCurrentPage){
    return Container(
     margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.green[900] : Colors.green[700],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    mySLides = getSlides();
    controller = new PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [const Color(0xFF1B5E20), const Color(0xFF388E3C)])),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: MediaQuery.of(context).size.height - 100,
          child: PageView(
            controller: controller,
              onPageChanged: (index) {
                setState(() {
                  slideIndex = index;
                });
              },
          children: <Widget>[
            SlideTile(
              imagePath: mySLides[0].getImageAssetPath(),
              title: mySLides[0].getTitle(),
              desc: mySLides[0].getDesc(),
            ),
            SlideTile(
              imagePath: mySLides[1].getImageAssetPath(),
              title: mySLides[1].getTitle(),
              desc: mySLides[1].getDesc(),
            ),
            SlideTile(
              imagePath: mySLides[2].getImageAssetPath(),
              title: mySLides[2].getTitle(),
              desc: mySLides[2].getDesc(),
            )
          ],
          ),
        ),
        bottomSheet: slideIndex != 2 ? Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton(
                onPressed: (){
                  controller.animateToPage(2, duration: Duration(milliseconds: 400), curve: Curves.linear);
                },
                splashColor: Colors.green[900],
                child: Text(
                  "SKIP",
                  style: TextStyle(color: Color(0xFF1B5E20), fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    for (int i = 0; i < 3 ; i++) i == slideIndex ? _buildPageIndicator(true): _buildPageIndicator(false),
                  ],),
              ),
              FlatButton(
                onPressed: (){
                  print("this is slideIndex: $slideIndex");
                  controller.animateToPage(slideIndex + 1, duration: Duration(milliseconds: 500), curve: Curves.linear);
                },
                splashColor: Colors.green[900],
                child: Text(
                  "NEXT",
                  style: TextStyle(color: Color(0xFF1B5E20), fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ): InkWell(
          onTap: () {
              Navigator.of(context).pop(SIGN_UP);
              print("Routing to Sign up screen");
            },
          child: Container(
            height: Platform.isIOS ? 70 : 60,
            color: Colors.green[900],
            alignment: Alignment.center,
            child: Text(
              "GET STARTED NOW",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class SlideTile extends StatelessWidget {
  String imagePath, title, desc;

  SlideTile({this.imagePath, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imagePath),
          SizedBox(
            height: 40,
          ),
          Text(title, textAlign: TextAlign.center,style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20
          ),),
          SizedBox(
            height: 20,
          ),
          Text(desc, textAlign: TextAlign.center,style: TextStyle(
          fontWeight: FontWeight.w500,
              fontSize: 14))
        ],
      ),
    );
  }
}

