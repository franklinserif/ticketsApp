import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/res/widgets/app_coloum_text_layout.dart';
import 'package:ticket_app/base/res/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/res/widgets/big_circle.dart';
import 'package:ticket_app/base/res/widgets/big_dot.dart';
import 'package:ticket_app/base/res/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/res/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;

  const TicketView({super.key, required this.ticket, this.wholeScreen = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
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
                      TextStyleThird(text: ticket['from']['code']),
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
                      TextStyleThird(text: ticket['to']['code'])
                    ],
                  ),
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: ticket['from']['name']),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(text: ticket['flying_time']),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket['to']['name'],
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
              child: Column(
                children: [
                  // Show departure and destination with icons first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColoumTextLayout(
                        topText: ticket['date'],
                        bottomText: 'Date',
                        crossAxis: CrossAxisAlignment.start,
                      ),
                      AppColoumTextLayout(
                        topText: ticket['departure_time'],
                        bottomText: 'Departure time',
                        crossAxis: CrossAxisAlignment.center,
                      ),
                      AppColoumTextLayout(
                        topText: ticket['number'].toString(),
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
