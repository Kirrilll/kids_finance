import 'package:flutter/material.dart';
import 'package:kids_finance/core/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LessonWidget extends StatelessWidget {
  final bool isProgress;
  final String headName;
  final String subString;
  final String imageURL;

  const LessonWidget({
    Key? key,
    required this.headName,
    required this.subString,
    required this.isProgress,
    required this.imageURL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle? headStyle = Theme.of(context).textTheme.headlineSmall;
    final TextStyle? subStyle = Theme.of(context).textTheme.displayMedium;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: double.infinity, // Заполняет всю доступную высоту
              child: Image(
                image: AssetImage('assets/images/28.png'),
                fit: BoxFit
                    .cover, // Устанавливает заполнение всей доступной области
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
                      children: [
                        SvgPicture.asset(
                          'assets/images/bookicon.svg',
                          width: 26,
                          height: 26,
                        ),
                        const SizedBox(width: 8),
                        SvgPicture.asset(
                          'assets/images/headphonesIcon.svg',
                          width: 26,
                          height: 26,
                        ),
                      ],
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
            ),
          ],
        ),
      ),
    );
  }
}
