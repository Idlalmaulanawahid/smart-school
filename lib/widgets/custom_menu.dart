import 'package:flutter/material.dart';
import 'package:smart_school/config/theme.dart';

class CustomMenu extends StatelessWidget {
  final Widget icon;
  final String title;
  final Color color;
  final Function() onPressed;

  const CustomMenu({
    Key? key,
    required this.icon,
    required this.title,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: onPressed,
        child: Column(
          children: [
            Container(
              width: 65,
              height: 65,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(20),
              ),
              child: icon,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: blackTextStyle.copyWith(
                fontSize: fontSizeStandard,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
