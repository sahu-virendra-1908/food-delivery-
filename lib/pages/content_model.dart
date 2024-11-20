import 'dart:html';

class UnboardingContent {
  String image;
  String title;
  String description;
  UnboardingContent(
      {required this.description, required this.image, required this.title});
}

List<UnboardingContent> contact = [
  // UnboardingContent(description: "pick your food from menu  \n more than 35times",image: "images/screen1.png",title: "Select from menu"),
UnboardingContent(description: "you can pay oninr payment /n and cash on delivery", image: "images/screen2.png", title:"Easy and online payment"),
UnboardingContent(description:"Deliver your food  at \n Doorstep " , image:"images/screen3.png" , title: "Quick Delivery at your Doorstop"),



];
