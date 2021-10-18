import 'package:analytics/core/shared/spaces.dart';
import 'package:analytics/core/shared/texts.dart';
import 'package:analytics/modules/home/views/components/card_sales.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/filters_button_top_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BoxText.headingOne('Dashboard'),
            verticalSpaceSmall,
            FilterButtonTopBar(),
            verticalSpaceSmall,
            cardSales(
              title: "Total de Vendas",
              value: "R\$50,000",
              icon: FaIcon(
                FontAwesomeIcons.moneyBillWave,
                size: 65,
                color: Colors.white60,
              ),
              useIconAnalityc: true,
              backgroundColor: Colors.blueAccent,
              isWhite: true,
              isUp: true,
            ),
            verticalSpaceSmall,
            cardSales(
              title: "Ticket Médio",
              value: 'R\$334,95',
              backgroundColor: Colors.white,
              isWhite: false,
              icon: FaIcon(
                FontAwesomeIcons.ticketAlt,
                size: 65,
                color: Colors.black45,
              ),
            ),
            verticalSpaceSmall,
            cardSales(
              title: "Clientes Registrados",
              value: '111.448',
              backgroundColor: Colors.green,
              isWhite: true,
              icon: FaIcon(
                FontAwesomeIcons.users,
                size: 65,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
