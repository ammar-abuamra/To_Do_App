class Task {
  final String theTask;

  bool isDone;

  Task({this.theTask, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
