import 'package:flutter/material.dart';
import 'package:my_widget/agenda_page.dart';

class DiaryPage extends StatefulWidget {
  final int day;

  const DiaryPage({super.key, required this.day});

  @override
  State<DiaryPage> createState() => _DiaryPageState();
}

class _DiaryPageState extends State<DiaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Diary - Day ${widget.day}'),
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
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var i = 0; i < 18; i++)
                    Container(
                      width: double.infinity,
                      height: 80,
                      margin: const EdgeInsets.all(8),
                      color: Colors.amber.withOpacity(0.5),
                      child: Text(
                        'Hour: ${i + 6}hs',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const AgendaPage(),
            ),
          );
        },
      ),
    );
  }
}
