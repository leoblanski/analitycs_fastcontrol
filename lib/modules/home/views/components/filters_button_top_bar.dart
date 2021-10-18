import 'package:analytics/core/shared/spaces.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FilterButtonTopBar extends StatelessWidget {
  const FilterButtonTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            onPressed: () {},
            child: Text(
              "7 Dias",
              style: TextStyle(color: Colors.black45),
            ),
          ),
        ),
        horizontalSpaceSmall,
        Expanded(
          flex: 1,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            onPressed: () {},
            child: Text(
              "14 Dias",
              style: TextStyle(color: Colors.black45),
            ),
          ),
        ),
        horizontalSpaceSmall,
        Expanded(
          flex: 1,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            onPressed: () {},
            child: Text(
              "30 Dias",
              style: TextStyle(color: Colors.black45),
            ),
          ),
        ),
        horizontalSpaceSmall,
        Expanded(
          flex: 0,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            onPressed: () {},
            child: FaIcon(
              FontAwesomeIcons.filter,
              color: Colors.black26,
            ),
          ),
        ),
      ],
    );
  }
}
