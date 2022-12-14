import 'package:novels/models/user.dart';

import 'novel.dart';

class CommentModel {
  final String id;
  final String title;
  final String dateTime;
  final UserModel userModel;
  final NovelModel novelModel;

  CommentModel({
    required this.id,
    required this.title,
    required this.dateTime,
    required this.userModel,
    required this.novelModel,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'dateTime': dateTime,
      'userModel': userModel.toMap(),
      'novelModel': novelModel.toMap(),
    };
  }

  factory CommentModel.fromMap(Map<String, dynamic> map, String documentId) {
    return CommentModel(
      id: documentId,
      title: map['title'] as String,
      dateTime: map['dateTime'] as String,
      userModel: UserModel.fromMap(map['userModel'], map['userModel']['id']),
      novelModel: NovelModel.fromMap(map['novelModel'], map['novelModel']['id']),
    );
  }
}
