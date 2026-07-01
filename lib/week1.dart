import 'package:flutter/material.dart';

class Note {
  String title;
  String description;
  bool isCompleted;
  String toBuild;
  int? estimatedTime;

  Note(
      {
        required this.title,
        required this.description,
        required this.isCompleted,
        required this.toBuild,
        this.estimatedTime,
      });

}

class WeekOne extends StatefulWidget {
  const WeekOne({super.key});

  @override
  State<WeekOne> createState() => _WeekOneState();
}

class _WeekOneState extends State<WeekOne> {
  List<Note> notes = [Note(
      title: 'Day 1',
      description: 'Flutter and Dart SDK',
      isCompleted: true,
      toBuild: 'Installation and setup',
      estimatedTime: 2
  ),
    Note(
        title: 'Day 2',
        description: 'Dart: Variables,Types,Functions',
        isCompleted: true,
        toBuild: 'Build simple Calculator',
        estimatedTime: 2
    ),
    Note(
      title: 'Day 3',
      description: 'Dart: Class and Constructors',
      isCompleted: true,
      toBuild: 'Build Note Model',
    ),
    Note(
        title: 'Day 4',
        description: 'Flutter: MaterialApp, Scaffold, Container,Text',
        toBuild: 'Static Profile UI',
        isCompleted: true,
        estimatedTime: 2
    ),
    Note(
        title: 'Day 5',
        description: 'Flutter: Row, Column, and Expanded widgets',
        isCompleted: true,
        toBuild: 'Simple Login UI(no logic)',
        estimatedTime: 2
    ),
    Note(
        title: 'Day 6',
        description: 'Flutter: Stateful Widgets Basics',
        isCompleted: true,
        toBuild: 'Build: Counter app (with button and state change)',
        estimatedTime: 2
    ),
    Note(
        title: 'Day 7',
        description: 'Mini Project',
        isCompleted: true,
        toBuild: 'Simple Todo UI(add static items, no storage yet)',
        estimatedTime: 2
    ),
    Note(
        title: 'Day 8',
        description: 'Lists in Dart',
        isCompleted: true,
        toBuild: 'Build: dynamic list in flutter',
        estimatedTime: 2
    ),
    // Note(
    // title: 'Day 2',
    // description: 'Dart: Variables,Types,Functions',
    // isCompleted: true,
    // toBuild: 'Build simple Calculator',
    // estimatedTime: 2
    // ),
    // Note(
    // title: 'Day 3',
    // description: 'Dart: Class and Constructors',
    // isCompleted: true,
    // toBuild: 'Build Note Model',
    // ),
    // Note(
    // title: 'Day 4',
    // description: 'Flutter: MaterialApp, Scaffold, Container,Text',
    // toBuild: 'Static Profile UI',
    // isCompleted: true,
    // estimatedTime: 2
    // ),
    // Note(
    // title: 'Day 5',
    // description: 'Flutter: Row, Column, and Expanded widgets',
    // isCompleted: true,
    // toBuild: 'Simple Login UI(no logic)',
    // estimatedTime: 2
    // ),
    // Note(
    // title: 'Day 6',
    // description: 'Flutter: Stateful Widgets Basics',
    // isCompleted: true,
    // toBuild: 'Build: Counter app (with button and state change)',
    // estimatedTime: 2
    // ),
    // Note(
    // title: 'Day 7',
    // description: 'Mini Project',
    // isCompleted: true,
    // toBuild: 'Simple Todo UI(add static items, no storage yet)',
    // estimatedTime: 2
    // )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(automaticallyImplyLeading: true,
          title: Text("Day 1"),
        centerTitle: true),
        body: ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            final note = notes[index];

            return Card(
              margin: EdgeInsets.all(10),
              child: ListTile(
                title: Text(note.title),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the left
                  children: [
                    Text(note.description),
                    Text(
                        note.toBuild),
                  ],
                ),
                trailing: Icon(
                  note.isCompleted ? Icons.check : Icons.close,
                  color: note.isCompleted ? Colors.green : Colors.red,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}