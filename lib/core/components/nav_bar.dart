import 'package:analytics/core/shared/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.black12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Leonardo Blanski',
                            style: TextStyle(fontWeight: FontWeight.w500)),
                        Text('Patricia Molinari SemiJoias',
                            style: TextStyle(fontWeight: FontWeight.normal))
                      ],
                    ),
                    horizontalSpaceSmall,
                    Chip(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.black38, width: 2),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      label: const Text(
                        'ADM',
                        style: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.home),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            title: const Text('Início'),
            onTap: () {
              Modular.to.navigate('/customer_search/');
            },
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.users),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            title: const Text('Clientes'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.moneyBill),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            title: const Text('Faturamento'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.list),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            title: const Text('Relatórios'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.signOutAlt),
            trailing: FaIcon(FontAwesomeIcons.chevronRight),
            title: const Text('Sair'),
            onTap: () {
              Modular.to.navigate('/login/');
            },
          ),
        ],
      ),
    );
  }
}
