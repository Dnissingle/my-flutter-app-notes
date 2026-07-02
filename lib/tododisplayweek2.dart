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

List<Note> notes = [
  Note(
      title: 'Day 8',
      description: 'Dart: List',
      isCompleted: false,
      toBuild: 'Build: dynamic list in flutter',
      estimatedTime: 2
  ),
  Note(
    title: 'Day 9',
    description: 'ListView.builder',
    isCompleted: false,
    toBuild: 'Build To do app(add/remove item)',
  ),
  Note(
      title: 'Day 10',
      description: 'Navigation basics (Navigator.push)',
      toBuild: 'Build: 2 Screen App',
      isCompleted: false,
      estimatedTime: 2
  ),
  Note(
      title: 'Day 11',
      description: 'Forms + TextFields',
      isCompleted: false,
      toBuild: 'input-based Todo app',
      estimatedTime: 2
  ),
  Note(
      title: 'Day 12',
      description: 'Dialogs + Snack bars',
      isCompleted: false,
      toBuild: 'Add delete confirmation)',
      estimatedTime: 2
  ),
  Note(
      title: 'Day 13',
      description: 'Refactor UI into widgets',
      isCompleted: false,
      toBuild: 'Learn reusable components)',
      estimatedTime: 2
  ),
  Note(
      title: 'Day 14',
      description: 'Project',
      isCompleted: false,
      toBuild: 'Complete Todo App(UI + logic + navigation',
      estimatedTime: 2
  )
];

class WeekTwo extends StatelessWidget {
  const WeekTwo({super.key});

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