import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/content_model.dart';
import 'package:food_delivery_app/pages/signup.dart';
import 'package:food_delivery_app/widget/widget_support.dart';

class Onboard extends StatefulWidget {
  // Class names should start with an uppercase letter
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int current_index = 0; // Tracks the current index of the PageView
  late PageController _controller; // Controls the PageView

  @override
  void initState() {
    _controller = PageController(
        initialPage: 0); // Initializes the PageController with the first page
    super.initState();
  }

  @override
  void dispose() {
    _controller
        .dispose(); // Disposes of the PageController when the widget is removed from the widget tree
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            // Allows the PageView to take up the available space
            child: PageView.builder(
              controller: _controller,
              itemCount: contact.length, // Number of pages
              onPageChanged: (int index) {
                setState(() {
                  current_index =
                      index; // Updates the current index when the page is changed
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .center, // Centers the content horizontally
                    children: [
                      Image.asset(
                        contact[i].image,
                        height: 200,
                        // width: MediaQuery.of(context).size.width / 1.5,
                        width: 200,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(height: 20),
                      Text(
                        contact[i].title,
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      SizedBox(height: 20),
                      Text(
                        contact[i].description,
                        style: TextStyle(color: Colors.black, fontSize: 20),
                        textAlign:
                            TextAlign.center, // Centers the text horizontally
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contact.length,
                (index) => buildDot(index, context), // Builds the dot indicator
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (current_index == contact.length - 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp()),
                );
              }
              _controller.nextPage(
                  duration: Duration(microseconds: 100),
                  curve: Curves.bounceIn);
            },
            child: Container(
              decoration: BoxDecoration(color: Colors.redAccent),
              height: 60,
              margin: EdgeInsets.all(40),
              width: double.infinity,
              child: Center(
                child: Text(
                  
                 current_index == contact.length - 1 ?"Start": "Next",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    // buildDot creates a dot indicator for each page, changing size
    //based on whether the dot corresponds to the current page or not.
    return Container(
      height: 10,
      width: current_index == index
          ? 18
          : 7, // Changes the width based on the current index
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.black,
      ),
    );
  }
}
