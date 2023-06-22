import 'package:flutter/material.dart';
import 'package:flutter_college_dashboard/helper/demo_values.dart';
import 'package:flutter_college_dashboard/viewpages/widgets/post_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Basepage extends StatelessWidget {
  const Basepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          title: Text("Feed"),
        ),
        body: ListView.builder(
          itemCount: DemoValues.posts.length,
          itemBuilder: (BuildContext context, int index) {
            return PostCard(postData: DemoValues.posts[index]);
          },
        ),
      ),
      designSize: const Size(412, 920),
    );
  }
}
