class Task {
  final String theTask;

  bool isDone;

  Task({required this.theTask, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
