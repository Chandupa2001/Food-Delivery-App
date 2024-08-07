import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/signup.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController mailController = new TextEditingController();

  String email = "";

  final _formkey = GlobalKey<FormState>();

  resetPassword() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Password Reset Email has been sent !", style: TextStyle(fontSize: 18.0),)));
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("No user found for that email.", style: TextStyle(fontSize: 18.0),)));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            const SizedBox(height: 70),
            Container(
              alignment: Alignment.topCenter,
              child: const Text(
                "Password Recovery",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Enter you mail",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            Expanded(
              child: Form(
                key: _formkey,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ListView(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70, width: 2.0),
                        borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextFormField(
                          controller: mailController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please Enter Email';
                            }
                            return null;
                          },
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(
                              fontSize: 18, 
                              color: Colors.white
                            ),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.white70,
                              size: 30,
                            ),
                            border: InputBorder.none
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      GestureDetector(
                        onTap: () {
                          if (_formkey.currentState!.validate()) {
                            setState(() {
                              email = mailController.text;
                            });
                            resetPassword();
                          }
                        },
                        child: Container(
                          width: 140,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: const Center(
                            child: Text(
                              "Send Email",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don't have an account?",
                            style:
                              TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => const SignUp()));
                            },
                            child: const Text(
                              "Create",
                              style: TextStyle(
                                color: Color.fromARGB(225, 184, 166, 6),
                                fontSize: 20,
                                fontWeight: FontWeight.w500
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
