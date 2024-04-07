import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_app/main.dart';
import 'package:todo_app/screen/auth/auth_logic.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool pass = false;
  TextEditingController email = TextEditingController();
  TextEditingController password1 = TextEditingController();
  TextEditingController password2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor1,
      ),
      backgroundColor: backgroundColor1,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.25,
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: 15, right: 15, top: 20),
                          child: Text(
                            "Welcome to ToDo !",
                            textScaler: TextScaler.linear(2.4),
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w800,
                              color: Color.fromRGBO(20, 25, 122, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ///////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: 15, right: 15, top: 10),
                          child: Text(
                            "Create your account ,\nand  Unlock  Features",
                            textScaler: TextScaler.linear(2),
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(20, 25, 122, 0.8),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        TextField(
                          controller: email,
                          keyboardType: TextInputType.emailAddress,
                          style: const TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white70,
                            hintText: "Email",
                            contentPadding: const EdgeInsets.only(
                                left: 20, top: 20, bottom: 20),
                            hintStyle: const TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        Gap(size.height * 0.025),
                        TextField(
                          controller: password1,
                          obscureText: pass,
                          style: const TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600),
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white70,
                            hintText: "Create Password",
                            contentPadding: const EdgeInsets.only(
                                left: 20, top: 20, bottom: 20),
                            hintStyle: const TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15)),
                          ),
                        ),
                        Gap(size.height * 0.025),
                        TextField(
                          controller: password2,
                          style: const TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: pass,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white70,
                            hintText: "Confirm Password",
                            contentPadding: const EdgeInsets.only(
                                left: 20, top: 20, bottom: 20),
                            hintStyle: const TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15)),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(15)),
                            suffixIcon: IconButton(
                              icon: Icon(pass
                                  ? Icons.visibility_off
                                  : Icons.visibility_rounded),
                              onPressed: () {
                                setState(() {
                                  pass = !pass;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),

                    ///btn here

                    ///
                    SizedBox(
                      width: size.width * 0.85,
                      height: size.height * 0.08,
                      child: FilledButton(
                          onPressed: () async {
                            await Auth().createaccount(email.text,
                                password1.text, password2.text, context);

                            setState(() {});
                          },
                          style: ButtonStyle(
                              backgroundColor: const MaterialStatePropertyAll(
                                  Color.fromRGBO(20, 25, 122, 0.8)),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15)))),
                          child: const Text(
                            "Register",
                            textScaler: TextScaler.linear(1.3),
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700),
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
