import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_app/main.dart';
import 'package:todo_app/screen/auth/register.dart';
import 'package:todo_app/screen/auth/signin.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  Color mycolor(double x) => Color.fromRGBO(20, 25, 122, x);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          // padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: mycolor(0.75),
                ),
                height: size.height * 0.60,
                width: size.width,
                child: Center(child: Image.asset("img/img1.png")),
              ),
              ///////////////////////////////////////////
              Gap(size.height * 0.02),
              SizedBox(
                height: size.height * 0.35,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Manage your all ,\nTask here ",
                                textScaleFactor: 2.4,
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w800,
                                  color: mycolor(1),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Take control of your day and never miss\na deadline again. Create, prioritize, and\n track your tasks all in one place.",
                                textScaleFactor: 1.15,
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                  color: textColor2,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: size.width * 0.45,
                          height: size.height * 0.06,
                          child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RegisterPage()));
                              },
                              style: ButtonStyle(
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          side:
                                              BorderSide(color: mycolor(0.85)),
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              child: const Text(
                                "Register",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    color: Color.fromRGBO(20, 25, 122, 0.8),
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w700),
                              )),
                        ),
                        SizedBox(
                          width: size.width * 0.45,
                          height: size.height * 0.06,
                          child: FilledButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignInPage()));
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      const MaterialStatePropertyAll(
                                          Color.fromRGBO(20, 25, 122, 0.8)),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              child: const Text(
                                "Sign In",
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w700),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // print("done");
      //     // const SystemUiOverlayStyle(statusBarColor: Colors.red);
      //   },
      //   child: const Text("click"),
      // ),
    );
  }
}
