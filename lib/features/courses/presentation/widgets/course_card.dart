import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum ECoursePassingType {
  listen,
  read,
  watch
}

extension ECoursePassingTypeIcon on ECoursePassingType {
  Widget get icon => switch(this) {
    ECoursePassingType.read => Image.asset(
      '',
      width: 26,
      height: 26,
    ),
    _ => SizedBox()
  };
}


//Кол-во уроко, средняя продолжительность
class CourseCard extends StatelessWidget {
  final bool isProgress;
  final String headName;
  final String subString;
  final String imageURL;
  final List<String> iconURLs;

  const CourseCard({
    super.key,
    required this.isProgress,
    required this.headName,
    required this.subString,
    required this.imageURL,
    required this.iconURLs,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle? headStyle = Theme.of(context).textTheme.headlineSmall;
    final TextStyle? subStyle = Theme.of(context).textTheme.displayMedium;
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
               SizedBox.square(
                 dimension: 100,
                 child: Image.asset(
                  imageURL,
                  fit: BoxFit.cover,
                                  ),
               ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 11),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
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
                    FittedBox(
                          child: Text(headName, style: headStyle)
                      ),
                    const SizedBox(height: 6),
                    FittedBox(
                      child: Text(
                        subString,
                        style: subStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
