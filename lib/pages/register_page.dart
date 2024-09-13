import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sportysole/core/constants.dart';
import 'package:sportysole/pages/main_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kcontentColor,
        body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(children: [
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      alignment: Alignment.center,
                      child: const Text(
                        "Register New User",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Enter your username'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Enter your email'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Enter your  password'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                          hintText: 'Confirm password'),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => CustomBottomNav());
                      },
                      child: Center(
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 176, 177, 133),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          height: 45,
                          width: 90,
                          child: const Center(
                            child: Text(
                              "Register",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.amber),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account?",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => CustomBottomNav());
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(fontSize: 15, color: Colors.amber),
                          ),
                        ),
                      ],
                    ),
                  ]))),
        ));
  }
}
