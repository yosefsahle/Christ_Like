import 'package:flutter/material.dart';

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
                      onPressed: () {},
                      child: const Text(
                        'Skip',
                        style: TextStyle(fontSize: 20),
                      )),
                  const Center(
                    child: Image(
                      image: NetworkImage(
                          'https://img.freepik.com/free-vector/access-control-system-abstract-concept_335657-3180.jpg'),
                      width: 150,
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
                                onPressed: () {}, child: const Text('Sign Up')),
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
