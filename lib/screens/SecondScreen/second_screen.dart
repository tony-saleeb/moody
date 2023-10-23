import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as b;
import 'package:moody/widgets/CustomCard.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  static const String routeName = "fitnessApp";

  @override
  State<SecondScreen> createState() => _FitnessAppState();
}

class _FitnessAppState extends State<SecondScreen> {
  final List<FitnessCard> fitnessCards = [
    FitnessCard(
        img: "yoga_woman",
        title: "Morning Yoga",
        desc: "Enhance mental focus."),
    FitnessCard(
        img: "yoga_woman_2",
        title: "Plank Exercise",
        desc: "Boost posture and\nstability."),
  ];

  List<String> workoutCategories = ["All Types", "Full Body", "Upper", "Lower"];
  int? selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _createAppBar(context),
                _displayStatsContainer(context),
                _showWorkoutPrograms(context),
                WorkoutCategoryMenu(
                  categories: workoutCategories,
                  selectedIndex: selectedCategoryIndex,
                  onCategoryTap: (index) {
                    setState(() {
                      selectedCategoryIndex = index;
                    });
                    print('Tapped on $selectedCategoryIndex');
                  },
                ),
                Container(
                  height: screenHeight,
                  child: ListView.builder(
                    itemCount: fitnessCards.length,
                    itemBuilder: (context, index) {
                      return CustomCard(
                        title: fitnessCards[index].title,
                        description: fitnessCards[index].desc,
                        imagePath: fitnessCards[index].img,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _createAppBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildUserInfo(context),
        _showNotificationIcon(),
      ],
    );
  }

  Widget _buildUserInfo(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/images/workout/profile_icon.png"),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hey, Jade",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              "Ready to workout?",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 18),
            ),
          ],
        ),
      ],
    );
  }

  Widget _showNotificationIcon() {
    return b.Badge(
      position: b.BadgePosition.topEnd(top: -8, end: 3),
      badgeContent: Text(
        '',
        style: TextStyle(fontSize: 15),
      ),
      child: Icon(
        Icons.notifications_outlined,
        size: 30,
      ),
    );
  }

  Widget _displayStatsContainer(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 242, 243, 248),
        borderRadius: BorderRadius.circular(8),
      ),
      width: 326,
      height: 100,
      margin: EdgeInsets.only(top: 27),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _showStatColumn(
                context, Icons.favorite_outline, "Heart Rate", "81 BPM"),
            _showDivider(),
            _showStatColumn(context, Icons.list, "To-do", "32.5 %"),
            _showDivider(),
            _showStatColumn(
                context, Icons.whatshot_outlined, "Calories", "1000Cal"),
          ],
        ),
      ),
    );
  }

  Widget _showStatColumn(
      BuildContext context, IconData icon, String label, String value) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(icon),
                Text(
                  label,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontSize: 13),
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                value,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(width: 5),
            ],
          ),
        ],
      ),
    );
  }

  Widget _showDivider() {
    return Container(
      height: 50,
      width: 2,
      color: Color(0xffD9D9D9),
      margin: EdgeInsets.only(right: 8),
    );
  }

  Widget _showWorkoutPrograms(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Text("Fitness Programs",
          style: Theme.of(context).textTheme.bodyLarge),
    );
  }
}

class WorkoutCategoryMenu extends StatefulWidget {
  final List<String> categories;
  final int? selectedIndex;
  final Function(int) onCategoryTap;

  const WorkoutCategoryMenu({
    required this.categories,
    required this.selectedIndex,
    required this.onCategoryTap,
  });

  @override
  _WorkoutCategoryMenuState createState() => _WorkoutCategoryMenuState();
}

class _WorkoutCategoryMenuState extends State<WorkoutCategoryMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 16,
      ),
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: InkWell(
              onTap: () {
                widget.onCategoryTap(index);
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 3,
                            color: widget.selectedIndex == index
                                ? Color(0xff363F72)
                                : Color(0xff667085)))),
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.categories[index],
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: widget.selectedIndex == index
                          ? Color(0xff363F72)
                          : Color(0xff667085)),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class FitnessCard {
  final String img;
  final String title;
  final String desc;

  FitnessCard({required this.img, required this.title, required this.desc});
}
