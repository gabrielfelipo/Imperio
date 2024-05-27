import 'package:flutter/material.dart';
import 'package:imperio/core/Labels.dart';

class BestOddCard extends StatelessWidget {
  const BestOddCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 20),
      decoration: BoxDecoration(
        color: const Color(0xffc0c4c2),
        borderRadius: BorderRadius.circular(36),
      ),
      // child: const OddRow(),
    );
  }
}

class OddRow extends StatelessWidget {
  const OddRow(
      {super.key,
      required this.oddHouse,
      required this.oddDraw,
      required this.oddOutside});
  final String oddHouse;
  final String oddDraw;
  final String oddOutside;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InsideBestOddCard(
          variavel: "Casa",
          imagePath: 'assets/images/1xbetIcon.png',
          value: oddHouse,
        ),
        Container(
          height: 26,
          width: 1,
          color: const Color(0xff646e69),
        ),
        InsideBestOddCard(
          variavel: "Empate",
          imagePath: 'assets/images/betsafeIcon.png',
          value: oddDraw,
        ),
        Container(
          height: 26,
          width: 1,
          color: const Color(0xff646e69),
        ),
        InsideBestOddCard(
          variavel: "Fora",
          imagePath: 'assets/images/betssonIcon.png',
          value: oddOutside,
        )
      ],
    );
  }
}

class InsideBestOddCard extends StatelessWidget {
  const InsideBestOddCard(
      {super.key,
      required this.variavel,
      required this.imagePath,
      required this.value});

  final String variavel;
  final String imagePath;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      child: Column(
        children: [
          Text(
            variavel,
            style: imperioLabelStyle(10, FontWeight.w400,
                color: const Color(0xff505854)),
          ),
          Container(
            margin: const EdgeInsets.only(top: 4.0, bottom: 6.0),
            child: Image.asset(
              imagePath,
              width: 66,
              height: 15,
              fit: BoxFit.fitWidth,
            ),
          ),
          Text(
            value,
            style: imperioLabelStyle(16, FontWeight.w500,
                color: const Color(0xff505854)),
          ),
        ],
      ),
    );
  }
}
