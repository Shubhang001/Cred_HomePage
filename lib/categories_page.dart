import 'package:flutter/material.dart';

class Catagoriespage extends StatefulWidget {
  const Catagoriespage({super.key});

  @override
  State<Catagoriespage> createState() => _CatagoriespageState();
}

class _CatagoriespageState extends State<Catagoriespage> {
  bool toggle = false;
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
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        // Black background color
                        border: Border.all(
                          color: Colors.white, // White border color
                          width: 2.0, // Border width
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            color: Colors.white,
                            icon: toggle == true
                                ? const Icon(
                                    Icons.dehaze,
                                    size: 30,
                                  )
                                : const Icon(
                                    Icons.grid_view_sharp,
                                    size: 30,
                                  ),
                            onPressed: () {
                              setState(() {
                                toggle = !toggle;
                              });

                              // Add your onPressed logic here
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        // Black background color
                        border: Border.all(
                          color: Colors.white, // White border color
                          width: 1.0, // Border width
                        ),
                      ),
                      child: IconButton(
                          color: Colors.white,
                          onPressed: () {},
                          icon: const Icon(Icons.expand_more)))
                ],
              ),
            ],
          )),
        ));
  }
}
