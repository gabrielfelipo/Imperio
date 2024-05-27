import 'package:flutter/material.dart';

class StakeBanner extends StatelessWidget {
  const StakeBanner(
      {super.key, required this.description, required this.logoPath});
  final String description;
  final String logoPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xfff5f2d4).withOpacity(0.84),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          SizedBox(
              width: 80,
              child: Text(
                logoPath,
              )),
          // Image.asset(
          //   logoPath,
          //   height: 40,
          // ),
          const SizedBox(width: 16),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
                children: [
                  const TextSpan(
                    text: 'Entre e tenha agora ',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: 'R\$ $description',
                    style: const TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextSpan(
                    text: ' de desconto!',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
