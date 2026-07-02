import 'package:flutter/material.dart';
import 'package:note_model/weekdata.dart';
import 'package:note_model/tododisplayweek1.dart';
import 'package:note_model/tododisplayweek2.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  final List _week = [
    'week 1',
    'week 2',
    'week 3',
    'week 4',
    'week 5',
    'week 6',
  ];
  final List _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notes")),
      body: ListView.builder(
        itemCount: learning.length,
        itemBuilder: (context, index) {
          final week = learning[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child:  InkWell(
              borderRadius: BorderRadius.circular(4), // Matches default Card corner radius
              onTap: () {
                // 💡 Put your button action here
                if (index == 0){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  WeekOne(),
                    ),
                  );
                }
                if (index == 1){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const WeekTwo(),
                    ),
                  );
                }
                if (index == 2){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const WeekTwo(),
                    ),
                  );
                }

                print('Tapped on: ${week.title}');
              },

              child: ListTile(
                title: Text(week.title),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the left
                  children: [
                    Text(week.description),
                    Text(
                      week.goal,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),

              ),
            ),
          );
        },
      ),
    );
  }
}