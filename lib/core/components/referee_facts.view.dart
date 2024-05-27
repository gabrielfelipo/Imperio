import 'package:flutter/material.dart';
import 'package:imperio/core/components/facts.view.dart';
import 'package:imperio/core/Labels.dart';

class RefereeFacts extends StatelessWidget {
  const RefereeFacts(
      {super.key,
      required this.facts,
      required this.name,
      required this.image});

  final String facts;
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    List<String> factsReferee = facts.split(".");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, bottom: 16),
          child: Text(
            'Fatos do árbitro',
            style: titleLabel,
          ),
        ),
        SizedBox(
          height: 420,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(
                width: 16,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: FactsPlayer(
                    items: factsReferee,
                    model: FactsViewModel.referee,
                    referee: name,
                    refereeImage: image,
                  )),
              const SizedBox(width: 16),
            ],
          ),
        ),
      ],
    );
  }
}
