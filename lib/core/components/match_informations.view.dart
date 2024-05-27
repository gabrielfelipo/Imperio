import 'package:flutter/material.dart';
import 'package:imperio/core/components/card_count.view.dart';
import 'package:imperio/core/components/share_button.view.dart';
import 'package:imperio/core/Labels.dart';
import 'package:intl/intl.dart';

class MatchInformations extends StatelessWidget {
  const MatchInformations(
      {super.key,
      required this.channels,
      required this.date,
      required this.stadium,
      required this.referee,
      required this.yellowCardMedia,
      required this.redCardMedia});

  final String channels;
  final String date;
  final String stadium;
  final String referee;
  final double yellowCardMedia;
  final double redCardMedia;

  String dateFormater(String data) {
    DateTime dateTime = DateTime.parse(data);
    String formatedDate = DateFormat('dd/MM/yyyy, HH:mm').format(dateTime);

    return formatedDate;
  }

  @override
  Widget build(BuildContext context) {
    String formatedDate = dateFormater(date);
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
                              SizedBox(
                                width: 100,
                                child: Text(
                                  channels,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: subTitleBoldLabel,
                                ),
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
                      formatedDate,
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
                      'Estádio',
                      style: subTitleLabel,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          stadium,
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
                        SizedBox(
                          width: 140,
                          child: Text(
                            referee,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: subTitleBoldLabel,
                          ),
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
                        Row(
                          children: [
                            CardCount(
                              color: Color(0xffde3b3b),
                              value: (redCardMedia / 100000).toStringAsFixed(2),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            CardCount(
                              color: Color(0xfff5d70a),
                              value:
                                  (yellowCardMedia / 10000).toStringAsFixed(2),
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
