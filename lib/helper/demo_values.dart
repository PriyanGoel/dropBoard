// import 'package:leaf/model/comment_model.dart';
// import 'package:leaf/model/post_model.dart';
// import 'package:leaf/model/user_model.dart';

import 'package:flutter_college_dashboard/model/comment_model.dart';
import 'package:flutter_college_dashboard/model/post_model.dart';
import 'package:flutter_college_dashboard/model/user_model.dart';
import 'package:flutter_college_dashboard/viewpages/widgets/post_stats.dart';

class DemoValues {
  static final List<UserModel> users = [
    UserModel(
      id: "1",
      name: "UCCDA",
      email: "Digitalindia.ymca@gmail.com",
      image: "assets/images/UCCDA.png",
      followers: 123,
      joined: DateTime(2019, 4, 30),
      posts: 12,
    ),
    UserModel(
      id: "2",
      name: "UCCDA",
      email: "Digitalindia.ymca@gmail.com",
      image: "assets/images/UCCDA.png",
      followers: 456,
      joined: DateTime(2018, 5, 30),
      posts: 13,
    ),
    UserModel(
      id: "3",
      name: "UCCDA",
      email: "Digitalindia.ymca@gmail.com",
      image: "assets/images/UCCDA.png",
      followers: 789,
      joined: DateTime(2017, 6, 30),
      posts: 14,
    ),
  ];

  static final String _body =
      """Aspernatur omnis consequatur dignissimos recusandae non. Praesentium nihil earum. Porro perspiciatis a velit doloremque consequatur impedit. Autem odio sed qui consequatur laboriosam sapiente omnis sit. Tenetur blanditiis iure molestias quidem odit numquam sunt aliquam.
 
Vitae libero perferendis voluptate et quasi aut impedit fuga. Maiores suscipit fugiat a est molestiae voluptas quasi earum recusandae. Ut omnis excepturi ut dolore ab.
 
Quia quo quisquam velit adipisci dolorem adipisci voluptatem. Eum ut quae et dolorem sapiente. Ut reprehenderit et ut voluptatum saepe et voluptatem. Sit eveniet quaerat.

Sit necessitatibus voluptatem est iste nihil nulla. Autem quasi sit et. Qui veniam fugit autem. Minima error deserunt fuga dolorum rerum provident velit.
 
Quod necessitatibus vel laboriosam ut id. Ab eaque eos voluptatem beatae tenetur repellendus adipisci repudiandae quisquam. Quis quam harum aspernatur nulla. Deleniti velit molestiae.
 
Repudiandae sint soluta ullam sunt eos id laborum. Veniam molestiae ipsa odit soluta in rerum amet. Deserunt rerum vero est eaque voluptas aspernatur ut voluptatem. Sint sed enim.""";

  static final List<CommentModel> _comments = <CommentModel>[
    CommentModel(
      comment:
          "Et hic et sequi inventore. Molestiae laboriosam commodi exercitationem eum. ",
      user: users[0],
      time: DateTime(2019, 4, 30),
    ),
    CommentModel(
      comment: "Unde id provident ut sunt in consequuntur qui sed. ",
      user: users[1],
      time: DateTime(2018, 5, 30),
    ),
    CommentModel(
      comment: "Eveniet nesciunt distinctio sint ut. ",
      user: users[0],
      time: DateTime(2017, 6, 30),
    ),
    CommentModel(
      comment: "Et facere a eos accusantium culpa quaerat in fugiat suscipit. ",
      user: users[2],
      time: DateTime(2019, 4, 30),
    ),
    CommentModel(
      comment: "Necessitatibus pariatur harum deserunt cum illum ut.",
      user: users[1],
      time: DateTime(2018, 5, 30),
    ),
    CommentModel(
      comment:
          "Accusantium neque quis provident voluptatem labore quod dignissimos eum quaerat. ",
      user: users[2],
      time: DateTime(2017, 6, 30),
    ),
    CommentModel(
      comment:
          "Accusantium neque quis provident voluptatem labore quod dignissimos eum quaerat. ",
      user: users[1],
      time: DateTime(2019, 4, 30),
    ),
    CommentModel(
      comment: "Neque est ut rerum vel sunt harum voluptatibus et. ",
      user: users[0],
      time: DateTime(2018, 5, 30),
    ),
    CommentModel(
      comment:
          "Hic accusantium minus fuga exercitationem id aut expedita doloribus. ",
      user: users[1],
      time: DateTime(2017, 6, 30),
    ),
  ];

  static final List<PostModel> posts = [
    PostModel(
      id: "1",
      author: users[0],
      title: "DI HUNT",
      summary: "UCC & DA is here to announce the audition for the year.",
      body:
          """May it be technology, cultural events or the social avenues, we're here to take care of all!✨

University Computer Centre and Digital Affairs Cell of J.C Bose University of Science and Technology, YMCA, announces the auditions for the year, DI HUNT 2022, open. 🌟

The auditions will consist of 3 rounds.

▪️ Round 1 : Aptitude Test
There will be an Aptitude Test that calls for general reasoning skills and your ability to brainstorm. This will be a time bound test. Those who will participate in the e-Parichay webinar will get an extra edge above all the other applicants.

▪️ Round 2: Mentor-Mentee
You'll be alloted a mentor for the category that you've applied for. The mentor will guide you through the process of mini project building or some subtask that helps revamp the skills that you had chosen. This will evaluate your determination and level of dedication, you can provide us with in future.

▪️ Round 3 : PI
After you've battled your way through the first two rounds, it's time for a personal interview, which will help us get the most out of you and get to know you better.

We invite applications for the following fields-

⭐Development(Web & Android)
⭐Competitive Programming
⭐Anchoring & Content Writing
⭐Designing(Graphic design &
Video Editing)
⭐Internet of Things
⭐Marketing/Management
⭐Others

✨ About e-Parichay* ✨
e-Parichay is a 3-day long event consisting of webinars on -
🌟 Introduction to Engineering
🌟 Introduction to MS Excel
🌟 Introduction to Data Structures and Algorithms

e-Parichay aims at providing a roadmap for students in the field of engineering, computers and data structures. The curriculum is structured in such a way that it can accommodate students from not only CE, IT etc. but all the branches.
You need not to register for it separately if you are registering for the auditions.

📌 Do register yourselves to join this wonderful pool of talent. The registration closes on Jan 23, 2022.

Registration link for e-dakhila(auditions) and e-Parichay(webinars) :
( Link in bio)

Registration link for only attending the e-Parichay webinars :
(Link in bio)

_UCC&DA awaits the new talent!_""",
      imageURL: "assets/images/dihunt.jpeg",
      postTime: DateTime(2019, 11, 27, 7, 36),
      reacts: 123,
      views: 456,
      comments: _comments,
    ),
    PostModel(
      id: "2",
      author: users[1],
      title: "DI Hunt Announcement",
      summary: "Comming Soon....",
      body:
          """University Computer Centre & Digital Affairs of J.C Bose University of Science And Technology, YMCA will soon be hosting,

⭐ DI HUNT 2022 ⭐

An event full of knowledge with competitiveness that will eventually determine your admission in the club. Gear up for the auditions as this year, it's more about learning than selection.
See you all soon! 🤩""",
      imageURL: "assets/images/intro.jpeg",
      postTime: DateTime(2019, 4, 13),
      reacts: 321,
      views: 654,
      comments: _comments,
    ),
    PostModel(
      id: "3",
      author: users[2],
      title: "Farewell 2k21",
      summary: """GT Anouncement""",
      body: _body * 2,
      imageURL: "assets/images/gt.jpg",
      postTime: DateTime(2019, 1, 12),
      reacts: 213,
      views: 546,
      comments: _comments,
    ),
  ];
}
