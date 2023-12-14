import 'package:flutter/material.dart';
import 'package:flutter_gif/flutter_gif.dart';
import 'package:the_grand_warden/home.dart';
import 'package:the_grand_warden/signup.dart';

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

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

void _submitform() {
  if (_formkey.currentState!.validate()) {
    ScaffoldMessenger.of(_formkey.currentContext!).showSnackBar(
        const SnackBar(content: Text("Form submit successfully")));
  }
}

class _loginState extends State<login> {
  late FlutterGifController controller1;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formkey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * .1,
                  ),
                  GifImage(
                      image: AssetImage("assets/appname.gif"),
                      controller: controller1),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Welcome back",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 7),
                    child: Text(
                      "Login your account",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 110,
                      ),
                      Container(
                        height: 38,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 219, 214, 214),
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                onPressed: () {},
                                child: const Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const signup(),
                                      ));
                                },
                                child: const Text(
                                  "Signup  ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 22, top: 12, bottom: 5, right: 22),
                    child: TextFormField(
                      controller: nameController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                          labelText: "Username",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter username";
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 22, top: 8, bottom: 4, right: 22),
                    child: TextFormField(
                      controller: passController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                      validator: _validpassword,
                    ),
                  ),
                  SizedBox(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          padding: const EdgeInsets.only(
                              right: 135, left: 130, top: 10, bottom: 10)),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          ScaffoldMessenger.of(_formkey.currentContext!)
                              .showSnackBar(const SnackBar(
                            content: Text(
                              "Login successful",
                              style: TextStyle(
                                  backgroundColor:
                                      Color.fromARGB(255, 244, 245, 247),
                                  color: Color.fromARGB(255, 8, 145, 42)),
                            ),
                          ));
                        }
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const home(),
                            ));
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
