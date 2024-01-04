import 'package:first_firebase_project/widget/ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextStyle textStyle = const TextStyle(
      color: Color(0xffc1bfbf), fontSize: 20, fontWeight: FontWeight.w500);
  TextStyle textStyle1 = const TextStyle(
      color: Color(0xff4b548d), fontSize: 40, fontWeight: FontWeight.w500);
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe3e3e3),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Stack(
                children: [
                  UiHelper.customLoginContainer(const Color(0xfff2f2f2), 0, 0),
                  UiHelper.customLoginContainer(const Color(0xff4d568f), 50, 0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xffbe87ed),
                                      Color(0xff9846e6),
                                    ]),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              'G',
                              style: textStyle1,
                            )),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xffed5da2),
                                      Color(0xffea2d89),
                                    ]),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              'G',
                              style: textStyle1,
                            )),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xff3066ae),
                                      Color(0xff18b4e5),
                                    ]),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              'A',
                              style: textStyle1,
                            )),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Text(
                        'Gwalior Graphics Academy',
                        style: TextStyle(
                            color: Color(0xfff2f2f2),
                            fontWeight: FontWeight.w500,
                            fontSize: 26),
                      ),
                      const Text(
                        'Student Portal',
                        style: TextStyle(
                            color: Color(0xfff2f2f2),
                            fontWeight: FontWeight.w300,
                            fontSize: 26),
                      )
                    ],
                  )
                ],
              )),
          Expanded(
              flex: 2,
              child: Stack(
                children: [
                  UiHelper.customLoginContainer(const Color(0xff4d568f), 0, 0),
                  UiHelper.customLoginContainer(const Color(0xfff2f2f2), 0, 50),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text('Email', style: textStyle),
                      ),
                      CustomTextField(
                          controller: emailController, text: 'Email'),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text('Password', style: textStyle),
                      ),
                      CustomTextField(
                        controller: emailController,
                        text: 'Password',
                        iconsData: Icons.visibility_off,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      CustomElevatedButton(
                          voidCallback: () {},
                          text: 'Login',
                          color: const Color(0xff4c5590)),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 3,
                            width: 100,
                            decoration: (const BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                  Color(0xfff2f2f2),
                                  Color(0xff949191),
                                ]))),
                          ),
                          Text('OR', style: textStyle),
                          Container(
                            height: 3,
                            width: 100,
                            decoration: (const BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                  Color(0xff949191),
                                  Color(0xfff2f2f2),
                                ]))),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const FaIcon(FontAwesomeIcons.googlePlus,
                                  size: 55, color: Colors.redAccent)),
                          IconButton(
                              onPressed: () {},
                              icon: const FaIcon(FontAwesomeIcons.facebook,
                                  size: 55, color: Colors.blueAccent)),
                        ],
                      )
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
