import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rhymer/src/featurs/widgets/rhyme_list_card.dart';

@RoutePage()
class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<StatefulWidget> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // pinned: true,
            snap: true,
            floating: true,
            backgroundColor: theme.cardColor,
            elevation: 0,
            surfaceTintColor: Colors.redAccent,
            title: const Text("Избраное",
                style: TextStyle(fontSize: 19, color: Colors.black)),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          // ignore: prefer_const_constructors
          SliverList.builder(itemBuilder: (context,index)=>RhymerListCard(isSelected: true, rhym: 'Рифма',sourcheWord: "Слова",))
        ],
      ),
    );
  }
}
