import 'package:flutter/material.dart';
import 'package:imperio/core/components/primary_button.view.dart';
import 'dart:ui' as ui;

enum FactsViewModel { team, referee }

class FactsPlayer extends StatelessWidget {
  final List<String> items;
  final FactsViewModel model;

  const FactsPlayer({Key? key, required this.items, required this.model})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return Container(
      width: model == FactsViewModel.team ? 278 : widthScreen - 32,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 0),
          ),
        ],
        borderRadius: BorderRadius.circular(32),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (model == FactsViewModel.team) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/saoPauloIcon.png",
                    width: 48,
                    height: 48,
                  ),
                  const Text('São Paulo',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        height: 1.6,
                      )),
                ],
              ),
            ],
            if (model == FactsViewModel.referee) ...[
              Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: 72,
                      height: 72,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/mockupUserAvatar.png"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text('São Paulo',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                    const Text('Roludo',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
            ],
            ...items.asMap().entries.map((entry) {
              int index = entry.key + 1;
              String item = entry.value;

              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 4.0, horizontal: 11.4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('$index.',
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          // height: 1.6,
                        )),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Container(
                        child: Text(
                          item,
                          textAlign: TextAlign.left,
                          softWrap: true,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            height: 1.6,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Ver mais',
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(0xff505854),
                        fontWeight: FontWeight.bold,
                        height: 1.6,
                        fontFamily: 'Montserrat',
                      )),
                  const SizedBox(width: 7),
                  ImperioButton(
                      height: 34,
                      icon: const Icon(
                        Icons.arrow_forward,
                        size: 19,
                      ),
                      onPressed: () {},
                      backgroundColor: const Color(0xfff5d70a),
                      width: 48),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            )
          ],
        ),
      ),
    );
  }
}
