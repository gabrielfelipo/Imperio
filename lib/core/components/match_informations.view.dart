import 'package:flutter/material.dart';
import 'package:imperio/core/components/card_count.view.dart';
import 'package:imperio/core/components/share_button.view.dart';
import 'package:imperio/core/Labels.dart';

class MatchInformations extends StatelessWidget {
  const MatchInformations({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Informações do jogo',
          style: titleLabel,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Premiere',
                      style: subTitleLabel,
                    ),
                    SizedBox(
                      width: 224,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/paramountIcon.png',
                                height: 32,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Paramount',
                                style: subTitleBoldLabel,
                              )
                            ],
                          ),
                          const ShareButton(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Data',
                      style: subTitleLabel,
                    ),
                    Text(
                      '31/10/2023, 18:30',
                      style: subTitleBoldLabel,
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Estágio',
                      style: subTitleLabel,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Morumbi - São Paulo',
                          style: subTitleBoldLabel,
                        ),
                        Row(
                          children: [
                            Text(
                              'Capacidade',
                              style: imperioLabelStyle(10, FontWeight.w400),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '73,501',
                              style: imperioLabelStyle(
                                12,
                                FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Árbitro',
                          style: subTitleLabel,
                        ),
                        Text(
                          'André Luiz\nSkettino Policarpo',
                          style: subTitleBoldLabel,
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Média de cartões',
                          style: subTitleLabel,
                        ),
                        const Row(
                          children: [
                            CardCount(
                              color: Color(0xffde3b3b),
                              value: '0.65',
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            CardCount(
                              color: Color(0xfff5d70a),
                              value: '1.32',
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: Divider(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
