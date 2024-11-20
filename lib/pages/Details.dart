import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_delivery_app/widget/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int num = 1;
  int price = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(right: 50, top: 50),
          child: Column(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.black,
                  )),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                "images/ice.png.png",
                height: 300,
              ),
              // width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.height/2
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Amul Ice Cream", style: Appwidget.bold_text()),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      if (num > 0) {
                        num--;
                      }
                      if (price >30) {
                       
                        price = price - 30;
                      }
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(color: Colors.black),
                      child: Icon(Icons.remove, color: Colors.white),
                    ),
                  ),
                  Text(
                    "$num",
                    style: Appwidget.app_text_style(),
                  ),
                  GestureDetector(
                    onTap: () {
                      num++;
                      price += 30;
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(color: Colors.black),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              // Text("lauram!!")

              Text(
                "Salads are more than just a side dish; they're a vibrant mix of fresh vegetables",
                style: Appwidget.lightText(),
              ),

              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Delivery Time",
                    style: Appwidget.bold_text(),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.alarm,
                    color: Colors.black,
                    size: 50,
                  ),
                  Text(
                    "30",
                    style: Appwidget.bold_text(),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("Toatal Price ",style: Appwidget.bold_text()),
                      Text(
                        "\$$price",
                        style: Appwidget.bold_text(),
                      ),
                    ],
                  ),

                    Container(

                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
                
               child : Row(children: [SizedBox(width:10),
                
                Text("Add to card",style: TextStyle(color: Colors.white,fontSize: 20)),

               SizedBox(width: 20,),
               Container(
                decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(5)),
                child: Icon(Icons.shopping_cart,color: Colors.white,)),

               
               SizedBox(width: 10,),
               ],
               
               
               ))
                ],
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
