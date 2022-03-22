// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Layout Demo"),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.amber),
            child: Image.asset(
              "assets/images/seribu.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 8,
            // decoration: BoxDecoration(color: Colors.blue),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      children: const <TextSpan>[
                        TextSpan(
                          text: "Labuan Bajo\n",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: "NTT, Indonesia",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        Icons.star,
                        size: 30,
                        color: Colors.yellow.shade800,
                      ),
                      Text(
                        "4.1",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.call,
                    size: 30,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Call",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  )
                ],
              ),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.woman_sharp,
                    size: 30,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Route",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  )
                ],
              ),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.share,
                    size: 30,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Share",
                    style: TextStyle(fontSize: 20, color: Colors.blue),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(children: const <TextSpan>[
                  TextSpan(
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                      style: TextStyle(color: Colors.black, fontSize: 16))
                ])),
          )
        ],
      ),
    );
  }
}
