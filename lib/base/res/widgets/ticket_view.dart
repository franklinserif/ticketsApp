import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/res/widgets/app_coloum_text_layout.dart';
import 'package:ticket_app/base/res/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/res/widgets/big_circle.dart';
import 'package:ticket_app/base/res/widgets/big_dot.dart';
import 'package:ticket_app/base/res/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/res/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            // blue part of the tickets
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  // Show departure and destination with icons first line
                  Row(
                    children: [
                      const TextStyleThird(text: 'NYC'),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutbuilderWidget(randomDivider: 6),
                          ),
                          Center(
                              child: Transform.rotate(
                            angle: 1.57,
                            child: const Icon(
                              Icons.local_airport_rounded,
                              color: Colors.white,
                            ),
                          ))
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      const TextStyleThird(text: 'LDN')
                    ],
                  ),
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: 'New-York'),
                      ),
                      Expanded(child: Container()),
                      const TextStyleFourth(text: '8H 30M'),
                      Expanded(child: Container()),
                      const SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: 'London',
                          align: TextAlign.end,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // middle part of the ticket
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 10,
                      color: AppStyles.ticketBlue,
                    ),
                    Container(
                      color: AppStyles.ticketOrage,
                      height: 10,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BigCircle(
                      isRight: true,
                    ),
                    Expanded(
                        child: AppLayoutbuilderWidget(
                            randomDivider: 16, width: 6)),
                    BigCircle(
                      isRight: false,
                    ),
                  ],
                ),
              ],
            ),
            // orange part of  the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketOrage,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: const Column(
                children: [
                  // Show departure and destination with icons first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColoumTextLayout(
                        topText: '1 May',
                        bottomText: 'Date',
                        crossAxis: CrossAxisAlignment.start,
                      ),
                      AppColoumTextLayout(
                        topText: '08:00 AM',
                        bottomText: 'Departure time',
                        crossAxis: CrossAxisAlignment.center,
                      ),
                      AppColoumTextLayout(
                        topText: '23',
                        bottomText: 'Number',
                        crossAxis: CrossAxisAlignment.end,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
