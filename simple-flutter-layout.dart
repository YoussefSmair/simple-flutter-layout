import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Youssef First Try Flutter Module',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(
  decoration: const BoxDecoration(  //مشفاهم ديه اوي يا دكتور 
    gradient: LinearGradient(
      colors: [
        Colors.orange,
        Color(0xFFFFD700), // Gold
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
),

        centerTitle: false,
        title: const Text(
          'Youssef First Try Flutter Module',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(
                  child: FeatureCard(
                    icon: Icons.directions_bus,
                    title: 'Transport',
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: FeatureCard(
                    icon: Icons.campaign,
                    title: 'Announcements',
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            const Row(
              children: [
                Expanded(
                  child: FeatureCard(
                    icon: Icons.description,
                    title: 'Resources',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const FeatureCard({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(80),
      ),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 50,
              color: Colors.orange,
            ),
            const SizedBox(height: 15),
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}