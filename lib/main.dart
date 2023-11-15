import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Color.fromARGB(255, 98, 159, 225),
    appBar: AppBar(
      title: const Text(
        'Matching Pictures Challenge',
        style: TextStyle(
          fontSize: 17,
        ),
      ),
      backgroundColor: Color.fromARGB(255, 27, 108, 207),
    ),
    body: ImagePage(),
  )));
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImage = 1;
  int rightImage = 2;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(leftImage == rightImage ? "You are winner 🥇" : 'Try again!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            )),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      leftImage = Random().nextInt(8) + 1;
                    });
                  },
                  child: Image.asset('images/image-$leftImage.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      rightImage = Random().nextInt(8) + 1;
                    });
                  },
                  child: Image.asset('images/image-$rightImage.png'),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
