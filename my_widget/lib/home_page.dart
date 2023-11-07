import 'package:flutter/material.dart';
import 'package:my_widget/agenda_page.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Home'),
        titleTextStyle: const TextStyle(color: Colors.white),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/background.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amber.withOpacity(0.40),
                      border: Border.all(width: 0),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'AgendaApp',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.amber.withOpacity(0.40),
                      border: Border.all(width: 0),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Welcome',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            child: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
            heroTag: null,
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.white,
            child: const Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const AgendaPage(),
                ),
              );
            },
            heroTag: null,
          ),
        ],
      ),
    );
  }
}
