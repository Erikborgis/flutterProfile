import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Flutter',
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: Container(
            color: Colors.blueGrey, // Set the color of the AppBar background
            child: AppBar(
              title: const Text('Personal Card'),
              leading: const Icon(Icons.account_circle),
              backgroundColor:
                  Colors.transparent, // Make the AppBar background transparent
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 150,
                backgroundImage: AssetImage('images/FB_IMG_1652597913379.jpg'),
              ),
              const SizedBox(height: 16),
              const Text(
                'Erik Borgström',
                style: TextStyle(fontFamily: "GreatVibes", fontSize: 50),
              ),
              const SizedBox(height: 8),
              const SizedBox(height: 8),
              FittedBox(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Text(
                                'Previous Head Chef, now student at Linneaus University',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.email,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Email: eb223fe@student.lnu.se',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Phone: 072 308 12 22',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_city,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'City: Växjö',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
