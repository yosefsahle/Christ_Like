import 'package:flutter/material.dart';
import 'package:our_app_demo/navigations/navigation.dart';
import 'package:our_app_demo/pages/screens/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (_) => const NavBar(),
                        ));
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(fontSize: 20),
                      )),
                  const Center(
                    child: Icon(
                      Icons.login_rounded,
                      color: Colors.blue,
                      size: 200,
                    ),
                  ),
                  Center(
                      child: Column(
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.indigoAccent.shade400,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Welcome Back',
                        style: TextStyle(
                            color: Colors.indigoAccent.shade400, fontSize: 16),
                      )
                    ],
                  )),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Column(
                      children: [
                        const SizedBox(
                          width: 400,
                          height: 60,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Email or Phone',
                              border: OutlineInputBorder(),
                              label: Text('Email or Phone'),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const SizedBox(
                          width: 400,
                          height: 60,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Email or Phone',
                              border: OutlineInputBorder(),
                              label: Text('Email or Phone'),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.indigoAccent.shade400,
                              borderRadius: BorderRadius.circular(8)),
                          child: TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.login,
                                color: Colors.white,
                              ),
                              label: const Text(
                                'Log in',
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text('Forget Password?')),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushReplacement(MaterialPageRoute(
                                    builder: (_) => const SignupPage(),
                                  ));
                                },
                                child: const Text('Sign Up')),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ))
      ],
    ));
  }
}
