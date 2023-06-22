import 'package:flutter/material.dart';
import 'package:flutter_college_dashboard/model/post_model.dart';
import 'package:like_button/like_button.dart';

import 'inherited_widgets/inherited_post_model.dart';
// import 'package:leaf/model/post_model.dart';
// import 'package:leaf/view/widgets/inherited_widgets/inherited_post_model.dart';

class LikeButtonWidget extends StatefulWidget {
  // const LikeButtonWidget({ Key? key }) : super(key: key);

  @override
  _LikeButtonWidgetState createState() => _LikeButtonWidgetState();
}

class _LikeButtonWidgetState extends State<LikeButtonWidget> {
  bool isliked = false;
  int likecount = 68;

  // void likereset() {
  //   setState(() {
  //     this.isliked = !isliked;
  //     likecount += this.isliked ? 1 : -1;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          LikeButton(
            likeCount: likecount,
            isLiked: isliked,
            likeBuilder: (isliked) {
              final color = isliked ? Colors.red : Colors.grey;
            },
            countBuilder: (count, isliked, text) {
              final color = isliked ? Colors.black : Colors.grey;

              return Text(
                text,
                style: TextStyle(color: color),
              );
            },
            onTap: (isliked) async {
              // likereset();
              this.isliked = !isliked;
              likecount += this.isliked ? 1 : -1;

              return !isliked;
            },
          ),
        ]);
  }
}

class PostStats extends StatelessWidget {
  // bool isliked = false;
  int views = 0;
  // bool isliked = false;
  // int likecount = 68;
  PostStats({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PostModel postData = InheritedPostModel.of(context).postData;
    // bool isliked = false;
    // int likecount = 68;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        // class _likebuttonwidgetState extends
        // LikeButton(
        //   likeCount: likecount,
        //   isLiked: isliked,
        //   likeBuilder: (isliked) {
        //     final color = isliked ? Colors.red : Colors.grey;
        //   },
        //   countBuilder: (count, isliked, text) {
        //     final color = isliked ? Colors.black : Colors.grey;

        //     return Text(
        //       text,
        //       style: TextStyle(color: color),
        //     );
        //   },
        //   onTap: (isliked) async {
        //     this.isliked = !isliked;
        //     likecount += this.isliked ? 1 : -1;

        //     return !isliked;
        //   },
        // ),
        // _ShowStat(

        //     icon: Icons.favorite,
        //     number: postData.reacts,
        //     color: Colors.red,
        //     ),
        _ShowStat(
          icon: Icons.remove_red_eye,
          // number: postData.views,
          number: views,
          color: Colors.green[900],
        ),
      ],
    );
  }
}

class _ShowStat extends StatelessWidget {
  final IconData icon;
  final int number;
  final Color color;

  const _ShowStat({
    Key key,
    @required this.icon,
    @required this.number,
    @required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 2.0),
          child: Icon(icon, color: color),
        ),
        Text(number.toString()),
      ],
    );
  }
}
