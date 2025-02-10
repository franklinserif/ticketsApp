import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotel({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.6,
      height: 300,
      margin: EdgeInsets.only(right: 50),
      decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage("${AppMedia.baseImage}/${hotel['image']}"),
                ),
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 176),
              Opacity(
                opacity: 0.7,
                child: Container(
                  width: size.width * 0.6,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 10),
                        child: Text(hotel['place'],
                            style: AppStyles.headLineStyle2
                                .copyWith(color: Colors.black)),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(hotel['destination'],
                            style: AppStyles.headLineStyle3
                                .copyWith(color: Colors.black)),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, bottom: 10),
                        child: Text('\$${hotel['price']}/night',
                            style: AppStyles.headLineStyle2
                                .copyWith(color: Colors.black)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
