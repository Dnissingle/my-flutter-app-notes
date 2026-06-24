import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

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

class MyApp extends StatelessWidget {
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
  isCompleted: false,
  toBuild: 'Static Profile UI',
  estimatedTime: 2
  ),
    Note(
      title: 'Day 5',
      description: 'Flutter: Row, Column, and Expanded widgets',
      isCompleted: false,
      toBuild: 'Simple Login UI(no logic)',
      estimatedTime: 2
  ),
    Note(
        title: 'Day 6',
        description: 'Flutter: Stateful Widgets Basics',
        isCompleted: false,
        toBuild: 'Build: Counter app (with button and state change)',
        estimatedTime: 2
    ),
    Note(
        title: 'Day 7',
        description: 'Mini Project',
        isCompleted: false,
        toBuild: 'Simple Todo UI(add static items, no storage yet)',
        estimatedTime: 2
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Notes")),
        body: ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            final note = notes[index];

            return Card(
              margin: EdgeInsets.all(8),
              child: ListTile(
                title: Text(note.title),
                subtitle: Text(note.description),
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