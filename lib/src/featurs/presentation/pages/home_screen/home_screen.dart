import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rhymer/src/featurs/widgets/carusel_rhymer.dart';
import 'package:rhymer/src/featurs/widgets/rhyme_list_card.dart';

import 'widget/base_container/base_conatiner.dart';
@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: false,
            snap: true,
            floating: true,
            backgroundColor: theme.cardColor,
            elevation: 0,
            surfaceTintColor: Colors.redAccent,
            title: const Text("Rhymer",
                style: TextStyle(fontSize: 19, color: Colors.black)),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(70),
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(12).copyWith(bottom: 8),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: theme.hintColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(
                        16,
                      )),
                  child: Row(
                    children: [
                      const SearchButton(),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Поиск рифм....",
                        style: TextStyle(
                            fontSize: 18,
                            color: theme.hintColor.withOpacity(0.4),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                )),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(
              child: SizedBox(
            height: 100,
            child: CaruselRhymer(theme),
          )),
          SliverPadding(
            padding: const EdgeInsets.only(top: 16),
            sliver: SliverList.builder(
                itemBuilder: (BuildContext context, int index) {
              return RhymerListCard(isSelected: false, rhym: 'Рифма',);
            }),
          )
        ],
      ),
    );
  }

}



class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.search);
  }
}
