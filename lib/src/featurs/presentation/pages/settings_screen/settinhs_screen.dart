import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rhymer/src/config/theme/app_theme.dart';
import 'package:rhymer/src/featurs/presentation/pages/home_screen/widget/base_container/base_conatiner.dart';
import 'package:rhymer/src/featurs/widgets/settings_list_card.dart';
import 'package:rhymer/src/featurs/widgets/sliver_tobox_adapter.dart';

@RoutePage()
class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});
  @override
  State<StatefulWidget> createState() => _SettingsState();
}

class _SettingsState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            snap: true,
            floating: true,
            backgroundColor: theme.cardColor,
            elevation: 0,
            title: const Text(
              "Настройки",
              style: TextStyle(fontSize: 19, color: Colors.black),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 16),
          ),
          SliverToBoxAdapter(
            child: Column(children: [
              SettingsListCard(
                value: false,
                text: "Темная тема",
                size: 20,
                onChaged: (value) {},
              ),
              SettingsListCard(
                value: false,
                text: "Увидомления",
                size: 20,
                onChaged: (value) {},
              ),
              SettingsListCard(
                value: true,
                text: "Разрешить аналитику",
                size: 20,
                onChaged: (value) {},
              ),
              SliverToboxList(
                  text: "Очистить историю",
                  size: 20,
                  onTap: () {},
                  iconData: Icons.delete_sweep_outlined,
                  iconColor: Colors.red),
              SliverToboxList(
                  text: "Подержка",
                  size: 20,
                  onTap: () {},
                  iconData: Icons.message_outlined,
                  iconColor: Colors.grey),
            ]),
          ),
        ],
      ),
    );
  }
}
