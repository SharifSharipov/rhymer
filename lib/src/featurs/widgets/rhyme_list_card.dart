import 'package:flutter/material.dart';
import 'package:rhymer/src/featurs/presentation/pages/home_screen/widget/base_container/base_conatiner.dart';

class RhymerListCard extends StatelessWidget {
  final bool isSelected;
  final String? sourcheWord;
  final String rhym;
  const RhymerListCard({
    super.key,
    required this.isSelected,
    this.sourcheWord,
    required this.rhym,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseContainer(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              if (sourcheWord != null) ...[
                Text(
                  sourcheWord!,
                  style: theme.textTheme.bodyLarge,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_forward_ios,size: 18,color: theme.highlightColor.withOpacity(0.9),)),
                ),
              ],
              Text(
                rhym,
                style: theme.textTheme.bodyLarge,
              ),
            ],
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: isSelected
                    ? theme.primaryColor
                    : theme.hintColor.withOpacity(0.3),
              ))
        ],
      ),
    );
  }
}
