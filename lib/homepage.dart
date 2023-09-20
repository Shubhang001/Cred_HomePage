import 'package:cred_pages/categories_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:neopop/widgets/buttons/neopop_button/neopop_button.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 350,
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Image.network(
                  "https://imgs.search.brave.com/Dzb8oheECkDCk5UuQZ_NGJnf5KoJx4sIvVfcwrR2vDc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pY29u/c3BsYWNlLmNvbS93/cC1jb250ZW50L3Vw/bG9hZHMvX2ljb25z/L2ZmZmZmZi8yNTYv/cG5nL21vbmV5LWJh/Zy1pY29uLTE4LTI1/Ni5wbmc"),
            ),
            const SizedBox(
              height: 80,
            ),
            const SizedBox(
              child: Text(
                "CRED mint",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 160,
              child: Text(
                "grow your savings. 3x faster",
                maxLines: 2,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 43,
              width: 300,
              child: NeoPopButton(
                color: Colors.white,
                onTapUp: () {
                  HapticFeedback.vibrate();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const Catagoriespage()),
                  );
                },
                onTapDown: () {
                  HapticFeedback.vibrate();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const Catagoriespage()),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Go to category →",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
