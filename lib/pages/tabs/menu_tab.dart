import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TabMenu extends StatelessWidget {
  final menu = [
    {
      'title': 'Ubicación',
      'sub': 'Ubicación de la empresa',
      'icon': MdiIcons.mapMarkerOutline,
    },
    {
      'title': 'Sobre nosotros',
      'sub': 'Información sobre la empresa',
      'icon': MdiIcons.mapMarkerOutline,
    },
    {
      'title': 'Versión',
      'sub': 'Versión de la aplicación',
      'icon': MdiIcons.mapMarkerOutline,
    },
  ];
//Metodo de mapeo
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: menu.map<Widget>((m) {
              return Column(
                children: [
                  ListTile(
                    leading: Icon(m['icon'] as IconData),
                    title: Text(m['title'].toString()),
                    subtitle: Text(m['title'].toString()),
                    onTap: () {
                      //Navigator.pushNamed(
                      //    context, '/' + m['titlw'].toString());
                      // no se te olvido crear los ROUTES
                    },
                  ),
                  Divider(thickness: 1.0),
                ],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
