import 'package:flutter/material.dart';
import 'package:mycv/views/header.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({ Key? key }) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SectionWidget(
                        header: "EDUCATION",
                        contents: [
                          const Text(
                            "Bachelor of Science / 2014 - 2018",
                            style: FontHelper.subHeader,
                          ),
                          const SizedBox(height: Spacing.small),
                          RichText(
                            text: const TextSpan(
                              text: "Computer & Embedded System, ",
                              style: FontHelper.contentStyle,
                              children: [
                                TextSpan(
                                  text: "GPA 8.7/10",
                                  style: FontHelper.contentBoldStyle
                                ),
                              ]
                            ),
                          ),
                          const SizedBox(height: Spacing.extraSmall),
                          const Text(
                            "Faculty of Electronics & Telecommunications, HCM University of Science",
                            style: FontHelper.contentStyle
                          ),
                        ],
                      ),
                      const SizedBox(height: Spacing.large),
                      SectionWidget(
                        header: "SKILLS",
                        contents: [
                          const Text(
                            "Bachelor of Science / 2014 - 2018",
                            style: FontHelper.subHeader,
                          ),
                          const SizedBox(height: Spacing.small),
                          RichText(
                            text: const TextSpan(
                              text: "Computer & Embedded System, ",
                              style: FontHelper.contentStyle,
                              children: [
                                TextSpan(
                                  text: "GPA 8.7/10",
                                  style: FontHelper.contentBoldStyle
                                ),
                              ]
                            ),
                          ),
                          const SizedBox(height: Spacing.extraSmall),
                          const Text(
                            "Faculty of Electronics & Telecommunications, HCM University of Science",
                            style: FontHelper.contentStyle
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SectionWidget(
                        header: "EDUCATION",
                        contents: [
                          const Text(
                            "Bachelor of Science / 2014 - 2018",
                            style: FontHelper.subHeader,
                          ),
                          const SizedBox(height: Spacing.small),
                          RichText(
                            text: const TextSpan(
                              text: "Computer & Embedded System, ",
                              style: FontHelper.contentStyle,
                              children: [
                                TextSpan(
                                  text: "GPA 8.7/10",
                                  style: FontHelper.contentBoldStyle
                                ),
                              ]
                            ),
                          ),
                          const SizedBox(height: Spacing.extraSmall),
                          const Text(
                            "Faculty of Electronics & Telecommunications, HCM University of Science",
                            style: FontHelper.contentStyle
                          ),
                        ],
                      ),
                      const SizedBox(height: Spacing.large),
                      SectionWidget(
                        header: "SKILLS",
                        contents: [
                          const Text(
                            "Bachelor of Science / 2014 - 2018",
                            style: FontHelper.subHeader,
                          ),
                          const SizedBox(height: Spacing.small),
                          RichText(
                            text: const TextSpan(
                              text: "Computer & Embedded System, ",
                              style: FontHelper.contentStyle,
                              children: [
                                TextSpan(
                                  text: "GPA 8.7/10",
                                  style: FontHelper.contentBoldStyle
                                ),
                              ]
                            ),
                          ),
                          const SizedBox(height: Spacing.extraSmall),
                          const Text(
                            "Faculty of Electronics & Telecommunications, HCM University of Science",
                            style: FontHelper.contentStyle
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Spacing {
  static const double extraSmall = 4;
  static const double small = 8;
  static const double medium = 12;
  static const double standard = 16;
  static const double large = 24;
}

class FontHelper {
  static const String mainFamily = "Merriweather";

  static const TextStyle sectionHeaderStyle = TextStyle(
    fontFamily: FontHelper.mainFamily,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle subHeader = TextStyle(
    fontFamily: FontHelper.mainFamily,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle contentStyle = TextStyle(
    fontFamily: FontHelper.mainFamily,
    fontSize: 12,
  );

  static const TextStyle contentBoldStyle = TextStyle(
    fontFamily: FontHelper.mainFamily,
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );
}

class SectionWidget extends StatelessWidget {
  final String header;
  final List<Widget>? contents;
  const SectionWidget({this.contents, this.header = "", Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderWidget(
          title: header,
        ),
        const SizedBox(height: Spacing.standard),
        ...(contents ?? [])
      ],
    );
  }
}