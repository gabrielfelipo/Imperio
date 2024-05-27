import 'package:flutter/material.dart';

class BetCard extends StatelessWidget {
  final String userName;
  final String betDescription;
  final String matchDetails;
  final String imageUrl;
  final String betSource;
  final String betOdds;

  const BetCard({
    super.key,
    required this.userName,
    required this.betDescription,
    required this.matchDetails,
    required this.imageUrl,
    required this.betSource,
    required this.betOdds,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            offset: const Offset(0, 1),
            blurRadius: 4,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 20,
            child: ClipOval(
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: 40,
                height: 40,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  userName,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  betDescription,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  matchDetails,
                  style: const TextStyle(
                    fontSize: 10,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(betSource),
              // Image.asset(
              //   'assets/images/bet365Icon.png',
              //   height: 40,
              //   width: 40,
              // ),
              Text(
                betOdds,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
