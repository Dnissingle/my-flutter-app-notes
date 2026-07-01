import 'package:flutter/material.dart';
import 'package:note_model/week1.dart';
import 'package:note_model/week.dart';
import 'package:note_model/week2.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                    MaterialPageRoute(builder: (context) => const WeekOne(),
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