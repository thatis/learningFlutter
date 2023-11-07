import 'package:flutter/material.dart';
import 'home_page.dart';
import 'diary_page.dart';

class AgendaPage extends StatefulWidget {
  const AgendaPage({super.key});

  @override
  State<AgendaPage> createState() => _AgendaPageState();
}

class _AgendaPageState extends State<AgendaPage> {
  // ignore: equal_elements_in_set
  final namesOfWeekDays = {'Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Schedule'),
        titleTextStyle: const TextStyle(color: Colors.white),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpeg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.amber.withOpacity(0.40),
                              border: Border.all(width: 0, color: Colors.amber),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: const Text(
                              'October',
                              style: TextStyle(
                                fontSize: 26,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          GridView.count(
                            crossAxisCount: 7,
                            children: List.generate(31, (index) {
                              return Center(
                                child: Text(
                                  '${index + 1}',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                              );
                            }),
                          ),
                          // Wrap(
                          //   children: [
                          //     for (var day in namesOfWeekDays)
                          //       writeWeekDayName(day),
                          //   ],
                          // ),
                          // for (var i = 0; 0 <= i && i < 4; i++)
                          //   writeWeek(i * 7 + 1, 7),
                          // const SizedBox(height: 2),
                          // writeWeek(29, 3),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
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
              builder: (context) => const HomePage(),
            ),
          );
        },
      ),
    );
  }

  // writeWeekDayName(String weekDay) {
  //   return Container(
  //     margin: const EdgeInsets.all(2),
  //     width: 46,
  //     height: 46,
  //     decoration: BoxDecoration(
  //       color: Colors.amber.withOpacity(0.40),
  //       border: Border.all(width: 0, color: Colors.amber),
  //       borderRadius: BorderRadius.circular(6),
  //     ),
  //     child: Text(
  //       weekDay,
  //       style: const TextStyle(
  //         fontSize: 26,
  //       ),
  //       textAlign: TextAlign.center,
  //     ),
  //   );
  // }

  // writeWeek(int firstDay, int daysInAWeek) {
  //   if (daysInAWeek < 7) {
  //     return writeLastWeek(firstDay, daysInAWeek);
  //   } else {
  //     return writeWeekDays(firstDay, daysInAWeek);
  //   }
  // }

  // writeLastWeek(int firstDay, int daysInAWeek) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     children: [
  //       const SizedBox(
  //         width: 4,
  //       ),
  //       for (var i = firstDay; firstDay <= i && i < firstDay + daysInAWeek; i++)
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.start,
  //           children: [
  //             Ink(
  //               width: 46,
  //               height: 46,
  //               padding: const EdgeInsets.all(2),
  //               decoration: BoxDecoration(
  //                   shape: BoxShape.rectangle,
  //                   color: Colors.amber.withOpacity(0.50),
  //                   borderRadius: BorderRadius.circular(10)),
  //               child: InkWell(
  //                 onTap: () {
  //                   Navigator.pushReplacement(
  //                     context,
  //                     MaterialPageRoute(
  //                       builder: (context) => DiaryPage(day: i),
  //                     ),
  //                   );
  //                 },
  //                 highlightColor: Colors.amber.withOpacity(0.30),
  //                 splashColor: Colors.amber.withOpacity(0.20),
  //                 child: Text(
  //                   '$i',
  //                   style: const TextStyle(fontSize: 26),
  //                   textAlign: TextAlign.center,
  //                 ),
  //               ),
  //             ),
  //             const SizedBox(
  //               width: 4,
  //             ),
  //           ],
  //         ),
  //     ],
  //   );
  // }

  // writeWeekDays(int firstDay, int daysInAWeek) {
  //   return Wrap(
  //     children: List.generate(daysInAWeek, (index) {
  //       return Container(
  //         margin: const EdgeInsets.all(2),
  //         child: Ink(
  //           width: 46,
  //           height: 46,
  //           padding: const EdgeInsets.all(4),
  //           decoration: BoxDecoration(
  //               shape: BoxShape.rectangle,
  //               color: Colors.amber.withOpacity(0.50),
  //               borderRadius: BorderRadius.circular(10)),
  //           child: InkWell(
  //             onTap: () {
  //               Navigator.pushReplacement(
  //                 context,
  //                 MaterialPageRoute(
  //                   builder: (context) => DiaryPage(day: index + firstDay),
  //                 ),
  //               );
  //             },
  //             highlightColor: Colors.amber.withOpacity(0.30),
  //             splashColor: Colors.amber.withOpacity(0.20),
  //             child: Text(
  //               '${index + firstDay}',
  //               style: const TextStyle(fontSize: 26),
  //               textAlign: TextAlign.center,
  //             ),
  //           ),
  //         ),
  //       );
  //     }),
  //   );
  // }
}
