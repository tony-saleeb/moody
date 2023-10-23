import 'package:flutter/material.dart';
import 'package:moody/core/application_theme.dart';
import 'package:moody/emojis.dart';

final List<ExerciseItem> exerciseItems = [
  ExerciseItem(
      img: "relaxation_icon", title: "Relaxation", color: Color(0xffF9F5FF)),
  ExerciseItem(
      img: "meditation_icon", title: "Meditation", color: Color(0xffFDF2FA)),
  ExerciseItem(
      img: "beathing_icon", title: "Breathing", color: Color(0xffFFFAF5)),
  ExerciseItem(img: "yoga_icon", title: "Yoga", color: Color(0xffF0F9FF)),
];

class ExerciseItem {
  final String img;
  final String title;
  final Color color;

  ExerciseItem({required this.img, required this.title, required this.color});
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 75,
          title: Container(
            padding: EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      height: 40,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Moody",
                    ),
                  ],
                ),
                Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.black,
                  size: 30,
                )
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 30, top: 21),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Hello, ",
                                style: ApplicationTheme
                                    .lightTheme.textTheme.bodyLarge,
                              ),
                              Text(
                                "Sara Rose",
                                style: ApplicationTheme
                                    .lightTheme.textTheme.bodyLarge!
                                    .copyWith(fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                "How are you feeling today? ",
                                style: ApplicationTheme
                                    .lightTheme.textTheme.bodyMedium,
                              ),
                            ],
                          ),
                          SizedBox(height: 25),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [Emojis()],
                      ),
                    ),
                    SizedBox(height: 23),
                    Container(
                      padding: EdgeInsets.only(left: 32, right: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Feature",
                            style: ApplicationTheme
                                .lightTheme.textTheme.bodyLarge!
                                .copyWith(
                                    fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "See more >",
                              style: ApplicationTheme
                                  .lightTheme.textTheme.bodySmall!
                                  .copyWith(color: Color(0xff027A48)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 32, left: 32),
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffECFDF3),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Positive vibes",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff344054),
                                      ),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  "Boost your mood with\npositive vibes",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        height: 1.5,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff344054),
                                      ),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.play_circle,
                                      color: Color(0xff32D583),
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text(
                                      "10 mins...",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'assets/images/walking_with_dog.png',
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          margin: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          width: 8,
                          height: 8,
                          margin: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          width: 8,
                          height: 8,
                          margin: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 32, right: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Exercise",
                            style: ApplicationTheme
                                .lightTheme.textTheme.bodyLarge!
                                .copyWith(
                                    fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "See more >",
                              style: ApplicationTheme
                                  .lightTheme.textTheme.bodySmall!
                                  .copyWith(color: Color(0xff027A48)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 16),
                      width: 360,
                      height: 180,
                      child: Center(
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 16.0,
                            mainAxisSpacing: 16.0,
                            childAspectRatio: 9 / 4,
                          ),
                          itemCount: exerciseItems.length,
                          itemBuilder: (BuildContext context, int index) {
                            ExerciseItem item = exerciseItems[index];

                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: item.color,
                              ),
                              height: 12,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                        "assets/images/${item.img}.png"),
                                    SizedBox(width: 10),
                                    Text(
                                      item.title,
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
