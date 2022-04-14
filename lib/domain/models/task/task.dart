class Task {
  Task({
    this.title,
    this.isCompleted,
    this.dueDate,
    this.comments,
    this.description,
    this.tags,
    this.token,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  String? title;
  String? isCompleted;
  DateTime? dueDate;
  String? comments;
  String? description;
  String? tags;
  String? token;
  DateTime? updatedAt;
  DateTime? createdAt;
  int? id;
}
