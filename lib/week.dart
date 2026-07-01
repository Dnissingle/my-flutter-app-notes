class learningFlutter {
  String title;
  String description;
  String goal;

  learningFlutter(
      {
        required this.title,
        required this.description,
        required this.goal,
      });

}
List<learningFlutter> learning = [learningFlutter(
    title: 'week 1',
    description: 'Dart + Flutter Basics',
    goal: 'Understand syntax + UI structures + build simple screens',
),
  learningFlutter(
    title: 'week 2',
    description: 'Real UI + State + Navigation',
    goal: 'Build Interactive apps',
  ),
  learningFlutter(
    title: 'week 3',
    description: 'API + JSON + Async',
    goal: 'Work with real data',
  ),
  learningFlutter(
    title: 'week 4',
    description: 'State Management + Architecture',
    goal: 'Stop writing messy code',
  ),
  learningFlutter(
    title: 'week 5',
    description: 'Firebase + Auth',
    goal: 'Real app backend',
  ),
  learningFlutter(
    title: 'week 6',
    description: 'Portfolio Project + Polish',
    goal: 'Build something job-ready',
  ),
];