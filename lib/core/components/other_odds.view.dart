import 'package:flutter/material.dart';
import 'package:imperio/core/components/share_button.view.dart';
import 'package:imperio/core/Labels.dart';
import 'package:imperio/core/structures/Pair.dart';

class OtherOddsCard extends StatelessWidget {
  const OtherOddsCard({
    super.key,
    required this.isSponsor,
    required this.betIconPath,
    required this.pairList,
  });

  final bool isSponsor;
  final String betIconPath;
  final List<Pair> pairList;

  @override
  Widget build(BuildContext context) {
    double highestOdd =
        pairList.map((pair) => pair.value).reduce((a, b) => a > b ? a : b);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      decoration: BoxDecoration(
        color: const Color(0xffc0c4c2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image.asset(
                      betIconPath,
                      width: 87,
                    ),
                    if (isSponsor)
                      Text(
                        'Patrocinadora',
                        style: imperioLabelStyle(13, FontWeight.bold),
                      ),
                  ],
                ),
                const ShareButton(),
              ],
            ),
          ),
          const SizedBox(height: 16),
          ...pairList.asMap().entries.map((entry) {
            int index = entry.key;
            Pair pair = entry.value;
            bool isLast = index == pairList.length - 1;
            return Column(
              children: [
                OtherOddsRow(
                  title: pair.key,
                  odd: pair.value.toString(),
                  isBest: pair.value == highestOdd,
                ),
                if (!isLast)
                  Divider(
                    color: const Color(0xff898989).withOpacity(0.4),
                  ),
              ],
            );
          }),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

class OtherOddsRow extends StatelessWidget {
  const OtherOddsRow(
      {super.key,
      required this.title,
      required this.odd,
      required this.isBest});

  final String title;
  final String odd;
  final bool isBest;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isBest)
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(60)),
                  child: Text(
                    'ODD MAIS ALTA',
                    style: imperioLabelStyle(10, FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              Text(
                title,
                style: subTitleLabel,
              ),
            ],
          ),
          Text(
            odd,
            style: titleLabel,
          ),
        ],
      ),
    );
  }
}
