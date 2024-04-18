import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LessonWidget extends StatelessWidget {
  final bool isProgress;
  final String headName;
  final String subString;
  final String imageURL;
  final List<String> iconURLs;

  const LessonWidget({
    Key? key,
    required this.isProgress,
    required this.headName,
    required this.subString,
    required this.imageURL,
    required this.iconURLs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle? headStyle = Theme.of(context).textTheme.headlineSmall;
    final TextStyle? subStyle = Theme.of(context).textTheme.displayMedium;
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: double.infinity,
                child: Image.asset(
                  imageURL,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 11),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: iconURLs.map((iconURL) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Image.asset(
                            iconURL,
                            width: 26,
                            height: 26,
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      headName,
                      style: headStyle,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      subString,
                      style: subStyle,
                    ),
                    const SizedBox(height: 11),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
