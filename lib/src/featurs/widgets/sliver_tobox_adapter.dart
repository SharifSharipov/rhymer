import 'package:flutter/material.dart';
import 'package:rhymer/src/config/theme/app_theme.dart';
import 'package:rhymer/src/featurs/presentation/pages/home_screen/widget/base_container/base_conatiner.dart';

class SliverToboxList extends StatelessWidget {
  final String text;
  final double size;
  final VoidCallback onTap;
  final IconData iconData;
  final Color iconColor;
  const SliverToboxList(
      {super.key,
      required this.text,
      required this.size,
      required this.onTap,
      required this.iconData, required this.iconColor});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 8),
      child: BaseContainer(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
             text,
              style: themeData.textTheme.titleMedium?.copyWith(fontSize: 20),
            ),
            IconButton(
              onPressed: onTap,
              icon: Icon(
                iconData,
                color:iconColor,
                size: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
