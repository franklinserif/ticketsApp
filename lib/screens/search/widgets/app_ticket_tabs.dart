import 'package:flutter/material.dart';
import 'package:ticket_app/screens/search/widgets/app_tabs.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFFF4F6FD)),
      child: const Row(
        children: [
          AppTab(
              tabBorderLeft: true, tabText: 'Airline Tickets', tabActive: true),
          AppTab(tabBorderLeft: false, tabText: 'Hotels', tabActive: false),
        ],
      ),
    );
  }
}
