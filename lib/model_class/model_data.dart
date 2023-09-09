import 'package:json_annotation/json_annotation.dart';

part 'model_data.g.dart';

@JsonSerializable(createToJson: true)
class Posts {
  int? userId;
  int? it;
  String? title;
  String? body;

  Posts({this.userId, this.it, this.title, this.body});
  factory Posts.fromJson(Map<String, dynamic> json) => _$PostsFromJson(json);
  Map<String, dynamic> toJson() => _$PostsToJson(this);
}
