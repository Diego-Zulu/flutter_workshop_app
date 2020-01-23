import 'package:equatable/equatable.dart';

class TodoEntity extends Equatable {
  final String id;
  final String title;
  final String description;
  bool isDone;

  TodoEntity(this.id, this.title, this.description, this.isDone);

  Map<String, Object> toJson() {
    return {
      "id": id,
      "title": title,
      "description": description,
      "isDone": isDone,
    };
  }

  @override
  String toString() {
    return 'TodoEntity{ id: $id title: $title, description: $description, isDone: $isDone }';
  }

  @override
  List<Object> get props => [title];
}
