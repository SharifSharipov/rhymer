import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rhymer/src/featurs/widgets/carusel_rhymer.dart';

@RoutePage()
class PoemsScreen extends StatefulWidget {
  const PoemsScreen({super.key});

  @override
  State<StatefulWidget> createState() => _PoemsScreenState();
}

class _PoemsScreenState extends State<PoemsScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            backgroundColor: theme.cardColor,
            elevation: 4,
            surfaceTintColor: Colors.redAccent,
            title: const Text("История",
                style: TextStyle(fontSize: 19, color: Colors.black)),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 15.0,
                crossAxisSpacing: 15.0,
                childAspectRatio: 1.9,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return CaruselRhymer(theme);
                },
                childCount: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
