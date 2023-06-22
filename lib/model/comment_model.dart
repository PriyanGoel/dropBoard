import 'package:flutter/material.dart';
import 'package:flutter_college_dashboard/model/user_model.dart';
// import 'package:leaf/model/user_model.dart';

class CommentModel {
  final UserModel user;
  final String comment;
  final DateTime time;

  const CommentModel({
    @required this.user,
    @required this.comment,
    @required this.time,
  });
}
