import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/widget/widget_support.dart';

class Forgetpassword extends StatefulWidget {
  const Forgetpassword({super.key});

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  @override
  final Editingcontroller = TextEditingController();
  String email = "";
  final _formkey = GlobalKey<FormState>();
  resetPassword() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          "Password Reset Email has beeen sent !",
          style: TextStyle(fontSize: 18.0),
        ),
      ));
    } on FirebaseAuthException catch (e) {
      if (e.code == "user- not-found") {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
          " No user found for  that Email",
          style: TextStyle(fontSize: 18),
        )));
      }
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Text(
                " Password  Recoveery",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter Email",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                  child: Form(
                      key: _formkey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white, width: 2.0),
                                  borderRadius: BorderRadius.circular(10)),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.person)),
                                controller: Editingcontroller,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Enter Email";
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                if (_formkey.currentState!.validate()) {
                                  setState(() {
                                    email = Editingcontroller.text.toString();
                                  });
                                  resetPassword();
                                }
                              },
                              child: Container(
                                alignment: Alignment.topRight,
                                child: Container(
                                  decoration:
                                      BoxDecoration(color: Colors.white),
                                  child: Text(
                                    " send email",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )))
            ],
          ),
        ));
  }
}
