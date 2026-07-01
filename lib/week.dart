class LearningFlutter {
  String title;
  String description;
  String goal;
  int weekNumber;

  LearningFlutter(
      {
        required this.title,
        required this.description,
        required this.goal,
        required this.weekNumber,
      });

}
List<LearningFlutter> learning = [LearningFlutter(
    title: 'week 1',
    description: 'Dart + Flutter Basics',
    goal: 'Understand syntax + UI structures + build simple screens',
  weekNumber: 1,
),
  LearningFlutter(
    title: 'week 2',
    description: 'Real UI + State + Navigation',
    goal: 'Build Interactive apps',
    weekNumber: 2,
  ),
  LearningFlutter(
    title: 'week 3',
    description: 'API + JSON + Async',
    goal: 'Work with real data',
    weekNumber: 3,
  ),
  LearningFlutter(
    title: 'week 4',
    description: 'State Management + Architecture',
    goal: 'Stop writing messy code',
    weekNumber: 4,
  ),
  LearningFlutter(
    title: 'week 5',
    description: 'Firebase + Auth',
    goal: 'Real app backend',
    weekNumber: 5,
  ),
  LearningFlutter(
    title: 'week 6',
    description: 'Portfolio Project + Polish',
    goal: 'Build something job-ready',
    weekNumber: 6,
  ),
];