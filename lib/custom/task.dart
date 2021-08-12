class Task {
  final String? text;
  bool? isChecked;

  Task({this.isChecked = false, this.text});

  void reverseisChecked() {
    isChecked = !isChecked!;
  }
}
