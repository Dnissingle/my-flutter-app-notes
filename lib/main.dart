import 'package:flutter/material.dart';
import 'package:note_model/todoweek1.dart';
import 'package:note_model/week.dart';
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Notes")),
        body: ListView.builder(
          itemCount: learning.length,
          itemBuilder: (context, index) {
            final learningFlutter = learning[index];

            return Card(
              margin: EdgeInsets.all(10),
              child:  InkWell(
                borderRadius: BorderRadius.circular(4), // Matches default Card corner radius
                onTap: () {
                  // 💡 Put your button action here
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => toDo()));
                  print('Tapped on: ${learningFlutter.title}');
                },

                child: ListTile(
                  title: Text(learningFlutter.title),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the left
                    children: [
                      Text(learningFlutter.description),
                      Text(
                        learningFlutter.goal,
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
      ),
    );
  }
}