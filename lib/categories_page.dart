import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class Catagoriespage extends StatefulWidget {
  const Catagoriespage({super.key});

  @override
  State<Catagoriespage> createState() => _CatagoriespageState();
}

class _CatagoriespageState extends State<Catagoriespage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 80, right: 30),
          child: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "explore",
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "CRED",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 60,
                      height: 35,
                      decoration: BoxDecoration(
                        // Black background color
                        border: Border.all(
                          color: Colors.white, // White border color
                          width: 2.0, // Border width
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          IconButton(
                            color: Colors.white,
                            icon: const Icon(
                              Icons.grid_view_outlined,
                              size: 35,
                            ),
                            onPressed: () {
                              // Add your onPressed logic here
                            },
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          )),
        ));
  }
}
