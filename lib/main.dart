import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'City Tour',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        textTheme: const TextTheme(
        ),
      ),
      home: const HomeScreen(title: 'City Tour'),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  State<HomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'City Tour'
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets.gambar1.jpg'),

            // deskripsi
            SizedBox(height: 290,),
            Text("Explore, Enjoy, Experience",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            ),
            SizedBox(height: 1,),
            Text("Explore the charm of our citys hidden gems and embark on a journey to dicover the rich cultural heroitage, breathtaking landscapes, and unique, experiences that await you. From historic landmarks to vibrant markets and serene natural wonders, our city offers a tapestry of experiences that will captivate your senses. Join us in exploring the beauty of our city and create memories that will last a lifetime. Come and visit our city's treasures",
                style: TextStyle(
                    fontSize: 16,
                  color: Colors.black
                ),
            textAlign: TextAlign.justify,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/gam'
                )
              ],
            )
          ],
        ),
        ),
      );
  }
}
