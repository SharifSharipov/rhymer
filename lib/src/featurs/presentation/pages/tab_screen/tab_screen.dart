import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rhymer/src/featurs/presentation/cubits/tab_cubit/tab_cubit.dart';
import 'package:rhymer/src/featurs/presentation/pages/favorite_screen/favorite_screen.dart';
import 'package:rhymer/src/featurs/presentation/pages/home_screen/home_screen.dart';
import 'package:rhymer/src/featurs/presentation/pages/save_screen/save_screen.dart';
import 'package:rhymer/src/featurs/presentation/pages/settings_screen/settinhs_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  static List<Widget> screens = [];
  @override
  void initState() {
    screens = const[
      HomeScreen(),
      FavoriteScreen(),
      SaveScreen(),
      SettingScreen(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: context.watch<TabCubit>().state,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Поиск"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Избраное"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Стихи"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Настройки"),
        ],
        currentIndex: context.watch<TabCubit>().state,
        onTap: context.read<TabCubit>().changeTabIndex,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w900),
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).hintColor,
        type: BottomNavigationBarType.fixed,
    
      ),
    );
  }
}
