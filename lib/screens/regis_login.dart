// ignore: file_names
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:login/screens/login.dart';
import 'package:login/screens/registration.dart';

class Regisloginpage extends StatefulWidget {
  const Regisloginpage({super.key});

  @override
  State<Regisloginpage> createState() => _RegisloginpageState();
}

class _RegisloginpageState extends State<Regisloginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text(
                'Let`s start your',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Schedule activity',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Gap(10),
              const Text(
                'Quickly see your upcoming event,task,confrens calls and more confrens calls and more and more',
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              const Gap(15),
              Image.asset(
                'assets/images/rasm1.png',
                width: 350,
                height: 350,
              ),
              const Gap(18),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Registration()));
                },
                child: Container(
                  width: 310,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF4955F6),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Create Account',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 150,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF5F5F5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/apple.png',
                          width: 27,
                          height: 27,
                        ),
                        const Gap(5),
                        const Text(
                          'Apple',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF5F5F5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          width: 27,
                          height: 27,
                        ),
                        const Gap(5),
                        const Text(
                          'Google',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Gap(5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'You Have Account?',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF4955F6),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
