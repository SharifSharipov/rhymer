import 'package:flutter/cupertino.dart';
import 'package:rhymer/src/config/theme/app_theme.dart';
import 'package:rhymer/src/featurs/presentation/pages/home_screen/widget/base_container/base_conatiner.dart';

class SettingsListCard extends StatelessWidget {
  final bool value;
  final String text;
  final double size;
  final ValueChanged<bool>? onChaged;
  const SettingsListCard(
      {super.key, required this.value, required this.text, required this.size, this.onChaged});
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
              style: themeData.textTheme.titleMedium
                  ?.copyWith(fontSize: size),
            ),
            CupertinoSwitch(value: value, onChanged:onChaged)
          ],
        ),
      ),
    );
  }
}
