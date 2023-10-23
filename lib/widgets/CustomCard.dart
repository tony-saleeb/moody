import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String duration = "7 mins";
  final String title;
  final String description;
  final String imagePath;

  const CustomCard({
    Key? key,
    required this.title,
    required this.description,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16, right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xffF8F9FC),
          border: Border.all(width: 1, color: Color(0xffEAECF5))),
      width: 326,
      height: 200,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Color(0xffE4E7EC)),
                    borderRadius: BorderRadius.circular(999),
                    color: Color(0xffFCFCFD),
                  ),
                  width: 68,
                  height: 36,
                  child: Center(
                    child: Text(
                      duration,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff344054)),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            description,
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                    // height: 1.5,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff344054)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                color: Color(0xff101828),
                                size: 25,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                "30 mins",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Expanded(
              child: Image.asset("assets/images/workout/${imagePath}.png"),
            ),
          ],
        ),
      ),
    );
  }
}