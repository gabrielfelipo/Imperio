import 'package:flutter/material.dart';
import 'package:imperio/core/components/primary_button.view.dart';
import 'package:imperio/core/my_colors.dart';

enum FactsViewModel { team, referee }

class FactsPlayer extends StatelessWidget {
  final List<String> items;
  final FactsViewModel model;
  final String? team;
  final String? teamImage;
  final String? referee;
  final String? refereeImage;

  const FactsPlayer({
    super.key,
    required this.items,
    required this.model,
    this.team,
    this.teamImage,
    this.referee,
    this.refereeImage,
  });

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                if (model == FactsViewModel.team) ...[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network(
                        teamImage!,
                        width: 48,
                        height: 48,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(team!,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(refereeImage!),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        SizedBox(
                          width: 140,
                          child: Text(referee!,
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
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
                  if (entry.key != items.length - 1 && index <= 6) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 11.4),
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
                                maxLines: 2,
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
                  } else {
                    return Container();
                  }
                }),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: ImperioButton(
                        height: 34,
                        icon: const Icon(
                          Icons.arrow_forward,
                          size: 19,
                        ),
                        onPressed: () {},
                        backgroundColor: MyColors.mainYellow,
                        width: 48),
                  ),
                ],
              ),
            ),
            // const SizedBox(
            //   height: 12,
            // )
          ],
        ),
      ),
    );
  }
}
