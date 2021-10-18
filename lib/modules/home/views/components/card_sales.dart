import 'package:analytics/core/shared/spaces.dart';
import 'package:analytics/core/shared/texts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class cardSales extends StatelessWidget {
  final String title;
  final String value;
  final String? grow;
  final Widget? icon;
  final bool useIconAnalityc;
  final Color? backgroundColor;
  final bool isWhite;
  final bool isUp;

  cardSales({
    Key? key,
    required this.title,
    required this.value,
    this.grow,
    this.icon,
    this.useIconAnalityc = false,
    required this.backgroundColor,
    this.isWhite = true,
    this.isUp = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: (isWhite
                        ? BoxText.subheadingWhite(title)
                        : BoxText.subheadingBlack(title)),
                  ),
                ],
              ),
              SizedBox(
                width: 180,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(
                    visible: useIconAnalityc,
                    child: Container(
                      width: 30,
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 5, top: 0),
                      decoration: BoxDecoration(
                        color: isWhite ? Colors.white12 : Colors.black12,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: isUp
                          ? FaIcon(
                              FontAwesomeIcons.arrowUp,
                              color: Colors.green,
                            )
                          : FaIcon(FontAwesomeIcons.arrowDown,
                              color: Colors.red),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 14, top: 6),
                    child: icon,
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, top: 6),
                    child: Text(
                      value,
                      style: TextStyle(
                          fontSize: 55,
                          fontWeight: FontWeight.w400,
                          color: isWhite ? Colors.white70 : Colors.black87),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
