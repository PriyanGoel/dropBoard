import 'package:flutter/material.dart';
import 'package:flutter_college_dashboard/helper/common.dart';
// import 'package:leaf/helper/demo_values.dart';
import 'package:flutter_college_dashboard/helper/demo_values.dart';

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_college_dashboard/model/post_model.dart';
import 'package:flutter_college_dashboard/viewpages/page/post_page.dart';
// import 'package:leaf/helper/demo_values.dart';
// import 'package:leaf/view/presentation/themes.dart';
import 'package:flutter_college_dashboard/viewpages/presentation/themes.dart';

import 'inherited_widgets/inherited_post_model.dart';
import 'post_stats.dart';
import 'post_time_stamp.dart';
import 'user_details.dart';

class PostCard extends StatelessWidget {
  final PostModel postData;

  const PostCard({Key key, @required this.postData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double aspectRatio = isLandscape(context) ? 6 / 2 : 6 / 3;

    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return PostPage(postData: postData);
        }));
      },
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: Card(
          elevation: 2,
          child: Container(
            margin: const EdgeInsets.all(4.0),
            padding: const EdgeInsets.all(4.0),
            child: InheritedPostModel(
              postData: postData,
              child: Column(
                children: <Widget>[
                  _Post(),
                  Divider(color: Colors.grey),
                  _PostDetails(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Post extends StatelessWidget {
  const _Post({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Row(children: <Widget>[_PostImage(), _PostTitleSummaryAndTime()]),
    );
  }
}

class _PostTitleSummaryAndTime extends StatelessWidget {
  const _PostTitleSummaryAndTime({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PostModel postData = InheritedPostModel.of(context).postData;
    final TextStyle titleTheme = Theme.of(context).textTheme.subtitle1;
    final TextStyle summaryTheme = Theme.of(context).textTheme.bodyText1;
    final String title = postData.title;
    final String summary = postData.summary;
    final int flex = isLandscape(context) ? 5 : 3;

    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.only(left: 4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(title, style: titleTheme),
                SizedBox(height: 2.0),
                Text(summary, style: summaryTheme),
              ],
            ),
            PostTimeStamp(alignment: Alignment.centerRight),
          ],
        ),
      ),
    );
  }
}

class _PostImage extends StatelessWidget {
  const _PostImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PostModel postData = InheritedPostModel.of(context).postData;
    return Expanded(flex: 2, child: Image.asset(postData.imageURL));
  }
}

class _PostDetails extends StatelessWidget {
  const _PostDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PostModel postData = InheritedPostModel.of(context).postData;

    return Row(
      children: <Widget>[
        Expanded(flex: 3, child: UserDetails(userData: postData.author)),
        Expanded(flex: 0, child: PostStats()),
        Expanded(flex: 1, child: LikeButtonWidget())
      ],
    );
  }
}



// bool _isLandscape(BuildContext context) =>
//     MediaQuery.of(context).orientation == Orientation.landscape;

// class PostCard extends StatelessWidget {
//   const PostCard({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final double aspectRatio = _isLandscape(context) ? 6 / 2 : 6 / 3;

//     return GestureDetector(
//       onTap: () {
//         Navigator.push(context,
//             MaterialPageRoute(builder: (BuildContext context) {
//           return PostPage();
//         }));
//       },
//       child: AspectRatio(
//         aspectRatio: aspectRatio,
//         child: Card(
//           elevation: 2,
//           child: Container(
//             margin: const EdgeInsets.all(4.0),
//             padding: const EdgeInsets.all(4.0),
//             child: Column(
//               children: <Widget>[
//                 _Post(),
//                 Divider(color: Colors.grey),
//                 _PostDetails(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }



// class _Post extends StatelessWidget {
//   const _Post({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: 3,
//       child: Row(children: <Widget>[_PostImage(), _PostTitleAndSummary()]),
//     );
//   }
// }

// class _PostTitleAndSummary extends StatelessWidget {
//   const _PostTitleAndSummary({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final TextStyle titleTheme = Theme.of(context).textTheme.headline6;
//     final TextStyle summaryTheme = Theme.of(context).textTheme.bodyText2;
//     final String title = DemoValues.postTitle;
//     final String summary = DemoValues.postSummary;

//     return Expanded(
//       flex: 3,
//       child: Padding(
//         padding: const EdgeInsets.only(left: 4.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             Text(title, style: titleTheme),
//             SizedBox(height: 2.0),
//             Text(summary, style: summaryTheme),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _PostImage extends StatelessWidget {
//   const _PostImage({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(flex: 2, child: Image.asset(DemoValues.postImage));
//   }
// }

// class _PostDetails extends StatelessWidget {
//   const _PostDetails({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: <Widget>[
//         _UserImage(),
//         _UserNameAndEmail(),
//         _PostTimeStamp(),
//       ],
//     );
//   }
// }

// class _UserNameAndEmail extends StatelessWidget {
//   const _UserNameAndEmail({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final TextStyle nameTheme = Theme.of(context).textTheme.subtitle2;
//     final TextStyle emailTheme = Theme.of(context).textTheme.bodyText2;

//     return Expanded(
//       flex: 5,
//       child: Padding(
//         padding: const EdgeInsets.all(4.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(DemoValues.userName, style: nameTheme),
//             SizedBox(height: 2.0),
//             Text(DemoValues.userEmail, style: emailTheme),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _UserImage extends StatelessWidget {
//   const _UserImage({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: 1,
//       child: CircleAvatar(
//         backgroundImage: AssetImage(DemoValues.userImage),
//       ),
//     );
//   }
// }

// class _PostTimeStamp extends StatelessWidget {
//   const _PostTimeStamp({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final TextStyle timeTheme = TextThemes.dateStyle;
//     return Expanded(
//       flex: 2,
//       child: Text(DemoValues.postTime, style: timeTheme),
//     );
//   }
// }
