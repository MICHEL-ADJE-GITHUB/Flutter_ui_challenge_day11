import 'package:day_11_app/FadeAnimation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Day 10 app',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.6),
                      Colors.black.withOpacity(.1),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FadeAnimation(
                      1,
                      const Text(
                        "What you would like to find?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    FadeAnimation(
                      1.3,
                      Container(
                        height: 50,
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            hintText: 'Search for cities, places ... ',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeAnimation(
                    1,
                    Text(
                      "Best Destination",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                          fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                    1.4,
                    SizedBox(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          makeItem(
                              image: 'assets/images/canada.jpg',
                              title: 'Canada'),
                          makeItem(
                              image: 'assets/images/Italy.jpg', title: 'Italy'),
                          makeItem(
                              image: 'assets/images/greece.jpg',
                              title: 'Greece'),
                          makeItem(
                              image: 'assets/images/united-states.jpg',
                              title: 'United States'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                    1,
                    Text(
                      "Best Hotels",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                          fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                    1.4,
                    SizedBox(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          makeItem(
                              image: 'assets/images/united-states.jpg',
                              title: 'Canada'),
                          makeItem(
                              image: 'assets/images/greece.jpg',
                              title: 'Italy'),
                          makeItem(
                              image: 'assets/images/Italy.jpg',
                              title: 'Greece'),
                          makeItem(
                              image: 'assets/images/canada.jpg',
                              title: 'United States')
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeItem({required String image, required String title}) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        child: Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
