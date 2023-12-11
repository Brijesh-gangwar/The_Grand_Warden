import 'package:flutter/material.dart';
import 'package:the_grand_warden/login.dart';

final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

String? _validpassword(value) {
  if (value.isEmpty) {
    return "Please enter password";
  }
  if (!(value.length < 16 && value.length > 6)) {
    return "Password should be between 6-16 words";
  }
  return null;
}

TextEditingController nameController = TextEditingController();
TextEditingController passController = TextEditingController();

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

void _submitform() {
  if (_formkey.currentState!.validate()) {
    ScaffoldMessenger.of(_formkey.currentContext!)
        .showSnackBar(const SnackBar(content: Text("Form submit successfully")));
  }
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    var a = MediaQuery.of(context).size.width;
    var b = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(229, 252, 251, 251),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(a * 0.02, b * 0.02, a * 0.02, 0),
          child: SingleChildScrollView(
            child: Center(
              child: Form(
                key: _formkey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        width: a * 0.2,
                        height: b * 0.3,
                        child: FittedBox(
                            fit: BoxFit.cover,
                            child: Image.asset("assets/img.png")),
                      ),
                      SizedBox(
                        height: b * 0.02,
                      ),
                      Text(
                        "Hello",
                        style: TextStyle(
                            fontSize: a * 0.04, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: b * 0.01,
                      ),
                      Text(
                        "Create your account",
                        style: TextStyle(
                            fontSize: a * 0.06, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: b * 0.015,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: b * 0.05,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromARGB(255, 188, 187, 187),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: b * 0.05,
                                  width: a * 0.25,
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => const login(),
                                            ));
                                      },
                                      child: Text(
                                        "  Login",
                                        style: TextStyle(
                                          fontSize: a * 0.046,
                                          color: Colors.black,
                                        ),
                                      )),
                                ),
                                SizedBox(
                                  height: b * 0.05,
                                  width: a * 0.3,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "Signup",
                                        style: TextStyle(
                                            fontSize: a * 0.046,
                                            color: Colors.black),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            a * 0.06, b * 0.02, a * 0.06, 0),
                        child: TextFormField(
                          controller: nameController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            labelText: "Username",
                            labelStyle: TextStyle(
                                fontSize: a * 0.04,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(195, 133, 133, 133)),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10.0)),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 247, 243, 243),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter username";
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            a * 0.06, b * 0.02, a * 0.06, 0),
                        child: TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(
                                fontSize: a * 0.04,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(195, 133, 133, 133)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 247, 243, 243),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            a * 0.06, b * 0.02, a * 0.06, 0),
                        child: TextFormField(
                          controller: passController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(
                                fontSize: a * 0.04,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(195, 133, 133, 133)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 247, 243, 243),
                          ),
                          validator: _validpassword,
                        ),
                      ),
                      SizedBox(
                        height: b * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            width: 320,
                            height: 50,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        const Color.fromARGB(255, 249, 106, 104)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                if (_formkey.currentState!.validate()) {
                                  ScaffoldMessenger.of(_formkey.currentContext!)
                                      .showSnackBar(const SnackBar(
                                    content: Text(
                                      "Login successful",
                                      style: TextStyle(
                                          backgroundColor: Color.fromARGB(
                                              255, 244, 245, 247),
                                          color:
                                              Color.fromARGB(255, 8, 145, 42)),
                                    ),
                                  ));
                                }
                              },
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
