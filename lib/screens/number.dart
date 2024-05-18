import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:login/screens/code_make.dart';

class Number extends StatefulWidget {
  const Number({super.key});

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Country of residance',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Gap(10),
            const Text(
              'Add your Phone number for Verification ID',
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            Gap(10),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.grey.shade300,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/flag.png',
                        width: 20,
                        height: 30,
                      ),
                      Icon(Icons.arrow_drop_down),
                      Text(
                        '+998',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 250,
                  height: 45,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.grey.shade300, width: 2)),
                )
              ],
            ),
            Gap(10),
            Row(
              children: [
                Text(
                  'Send it another way?',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                Gap(5),
                Text(
                  'Email',
                  style: TextStyle(
                      color: Color(0xFF4955F6), fontWeight: FontWeight.bold),
                )
              ],
            ),
            Gap(370),
            Padding(
              padding: const EdgeInsets.all(30),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Code_send()));
                },
                child: Column(
                  children: [
                    Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFF4955F6),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          'Continue',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: const TextSpan(
                            text: 'Terms Of Use',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              fontSize: 17,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' &',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              TextSpan(
                                text: ' Privacy Policy',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
