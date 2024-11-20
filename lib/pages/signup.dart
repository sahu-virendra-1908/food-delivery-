// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/Login.dart';
import 'package:food_delivery_app/pages/bottom_bar.dart';
import 'package:food_delivery_app/pages/home.dart';
import 'package:food_delivery_app/widget/widget_support.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final namecontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final emilalcontroller = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;

  void dispose() {
    emilalcontroller.dispose();
      passwordcontroller.dispose();
    namecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 7,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFFff5c30), Color(0xFFe74b1a)],
              ),
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
            height: MediaQuery.of(context).size.height / 2.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 60, left: 20, right: 20),
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    "images/l.png",
                    width: MediaQuery.of(context).size.width / 1.5,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 20),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2,
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Form(
                        key: _formKey,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const Text(
                                "Sign up",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(height: 20),
                              TextFormField(
                                controller: namecontroller ,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter your name";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: 'Name',
                                  hintStyle: Appwidget.lightText(),
                                  prefixIcon: const Icon(Icons.person),
                                ),
                              ),
                              const SizedBox(height: 20),
                              TextFormField(
                                controller: emilalcontroller,
                                // controller: emailController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter your email";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: Appwidget.lightText(),
                                  prefixIcon: const Icon(Icons.email_outlined),
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormField(
                                controller: passwordcontroller,
                                // controller: passwordController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter your password";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: Appwidget.lightText(),
                                  prefixIcon:
                                      const Icon(Icons.password_outlined),
                                  suffixIcon: const Icon(Icons.remove_red_eye),
                                ),
                              ),
                              const SizedBox(height: 20),
                              GestureDetector(
                                onTap: () async {
          if(_formKey.currentState!.validate()){
_auth.createUserWithEmailAndPassword(email: emilalcontroller.text.toString(), password: passwordcontroller.text.toString()).then((value){

 Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Home()));



}).onError((error, stackTrace) {
  
},);
            
          }



                                 
                                },
                                child: Material(
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    width: 200,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    decoration: BoxDecoration(
                                      color: const Color(0xffff5722),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "SIGN UP",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: const Text(
                      "Already have an account? Login",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
