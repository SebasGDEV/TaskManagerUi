class TaskModel {
  int id;
  String title;
  String content;
  String date;
  String createdDate;

  TaskModel({
    this.id,
    this.title,
    this.content,
    this.date,
    this.createdDate,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'date': date,
      'createdDate': createdDate,
    };
  }
}
