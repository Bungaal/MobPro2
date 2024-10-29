import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  final String username;

  const DashboardScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Screen'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
        
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background2.jpeg'), 
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            'Selamat datang, $username!',
            style: const TextStyle(fontSize: 35, fontStyle: FontStyle.italic, color: Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
      ),
    );
  }
}
