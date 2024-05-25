import 'package:flutter/material.dart';
import 'package:imperio/core/components/sport_keyword.view.dart';

class TipCard extends StatelessWidget {
  final String title;
  final String description;
  final Image banner;

  const TipCard(
      {super.key,
      required this.title,
      required this.description,
      required this.banner});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 225,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(24),
              ),
              child: banner),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 32),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    height: 1.12,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, right: 32, top: 8, bottom: 8),
                child: Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, bottom: 16, right: 16),
                child: Row(
                  children: [
                    SportKeyword(
                      title: 'Futebol',
                      icon: Image.asset(
                        'assets/images/soccerBallIcon.png',
                        height: 16,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    SportKeyword(
                      title: 'Basquete',
                      icon: Image.asset(
                        'assets/images/basketBallIcon.png',
                        height: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
