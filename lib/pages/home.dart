import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/Details.dart';
import 'package:food_delivery_app/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

bool ice = false,
    pizza = false,
    cocolla = false,
    burger = false,
    cofee = false,
    salad = false;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20, right: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hi Virendra ", style: Appwidget.app_text_style()),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.black),
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text("Delicious Food ", style: Appwidget.bold_text()),
              Text(
                "Discover and Get Great Food",
                style: Appwidget.lightText(),
              ),
              SizedBox(
                height: 10,
              ),
              showiteam(),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Material(
                      elevation: 5,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Details()));
                        },
                        child: Container(
                          child: Column(
                            children: [
                              Image.asset(
                                "images/ice.png.png",
                                height: 200,
                                width: 200,
                                fit: BoxFit.cover,
                              ),
                              Text("IceCream",
                                  style: Appwidget.app_text_style()),
                              Text("Fresh and Healthy",
                                  style: Appwidget.lightText())
                            ],
                          ),
                        ),
                      ),
                    ),
                    Material(
                      elevation: 5,
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset(
                              "images/ice.png.png",
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Text("IceCream", style: Appwidget.app_text_style()),
                            Text("Fresh and Healthy",
                                style: Appwidget.lightText())
                          ],
                        ),
                      ),
                    ),
                    Material(
                      elevation: 5,
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset(
                              "images/ice.png.png",
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Text("IceCream", style: Appwidget.app_text_style()),
                            Text("Fresh and Healthy",
                                style: Appwidget.lightText())
                          ],
                        ),
                      ),
                    ),
                    Material(
                      elevation: 5,
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset(
                              "images/ice.png.png",
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Text("IceCream", style: Appwidget.app_text_style()),
                            Text("Fresh and Healthy",
                                style: Appwidget.lightText())
                          ],
                        ),
                      ),
                    ),
                    Material(
                      elevation: 5,
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset(
                              "images/ice.png.png",
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Text("IceCream", style: Appwidget.app_text_style()),
                            Text("Fresh and Healthy",
                                style: Appwidget.lightText())
                          ],
                        ),
                      ),
                    ),
                    Material(
                      elevation: 5,
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset(
                              "images/ice.png.png",
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Text("IceCream", style: Appwidget.app_text_style()),
                            Text("Fresh and Healthy",
                                style: Appwidget.lightText())
                          ],
                        ),
                      ),
                    ),
                    Material(
                      elevation: 5,
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset(
                              "images/ice.png.png",
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                            ),
                            Text("IceCream", style: Appwidget.app_text_style()),
                            Text("Fresh and Healthy",
                                style: Appwidget.lightText())
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Material(
                elevation: 5.0,
                child: Row(
                  children: [
                    Image.asset(
                      "images/ice.png.png",
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                    Column(
                      children: [
                        Text("IceCream", style: Appwidget.app_text_style()),

                        // Container(
                        // width: MediaQuery.of(context).size.width/2,
                        // child:
                        Text("Fresh and Healthy", style: Appwidget.lightText()),

                        Text(
                          "\$28",
                          style: Appwidget.app_text_style(),
                        )
                        
                        // )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget showiteam() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            ice = true;
            pizza = false;
            cocolla = false;
            burger = false;
            cofee = false;
            salad = false;
            setState(() {});
          },
          child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                  decoration:
                      BoxDecoration(color: ice ? Colors.black : Colors.white),
                  child: Image.asset(
                    "images/ice.png.png",
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ))),
        ),
        GestureDetector(
          onTap: () {
            ice = false;
            pizza = false;
            cocolla = false;
            burger = false;
            cofee = false;
            salad = true;
            setState(() {});
          },
          child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                  decoration:
                      BoxDecoration(color: salad ? Colors.black : Colors.white),
                  child: Image.asset(
                    "images/—Pngtree—salad_4992953.png",
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ))),
        ),
        GestureDetector(
          onTap: () {
            ice = false;
            pizza = false;
            cocolla = false;
            burger = true;
            cofee = false;
            salad = false;
            setState(() {});
          },
          child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                  decoration: BoxDecoration(
                      color: burger ? Colors.black : Colors.white),
                  child: Image.asset(
                    "images/AdobeStock_773775119_Preview.png",
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ))),
        ),
        GestureDetector(
          onTap: () {
            ice = false;
            pizza = false;
            cocolla = false;
            burger = false;
            cofee = true;
            salad = false;
            setState(() {});
          },
          child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                  decoration:
                      BoxDecoration(color: cofee ? Colors.black : Colors.white),
                  child: Image.asset(
                    "images/cofee.png",
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ))),
        ),
        GestureDetector(
          onTap: () {
            ice = false;
            pizza = true;
            cocolla = false;
            burger = false;
            cofee = false;
            salad = false;
            setState(() {});
          },
          child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                  decoration:
                      BoxDecoration(color: pizza ? Colors.black : Colors.white),
                  child: Image.asset(
                    "images/pizza-png-19323.png",
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ))),
        ),
        GestureDetector(
          onTap: () {
            ice = false;
            pizza = false;
            cocolla = true;
            burger = false;
            cofee = false;
            salad = false;
            setState(() {});
          },
          child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                  decoration: BoxDecoration(
                      color: cocolla ? Colors.black : Colors.white),
                  child: Image.asset(
                    "images/cold_drink.png.png",
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ))),
        )
      ],
    );
  }
}
