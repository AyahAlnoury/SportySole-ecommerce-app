import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sportysole/core/constants.dart';
import 'package:sportysole/pages/main_page.dart';
import 'package:sportysole/pages/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/sale.jpg",
                  fit: BoxFit.cover,
                  height: 230,
                  width: 180,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Username',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.amber,
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: 'Enter your name'),
              ),
              const SizedBox(
                height: 7,
              ),
              const Text(
                'Password',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.amber,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: 'Enter your Password'),
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
                        "Login",
                        style: TextStyle(fontSize: 20, color: Colors.amber),
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
                    "Don't have an account?",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => RegisterPage());
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(fontSize: 15, color: Colors.amber),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
