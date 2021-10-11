import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:project_02/pages/tabs/inicio_tab.dart';
import 'package:project_02/pages/tabs/nosotros_tab.dart';
import 'package:project_02/pages/tabs/productos_tab.dart';

class RootPage extends StatefulWidget {
  RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  //https://encycolorpedia.gr/a83279
  //color 0xffa83279
  int curIndex = 0;

  var pages = [
    {
      'pagina': TabIni(),
      'texto': 'Inicio',
      'icono': MdiIcons.handHeartOutline,
      'color': 0xFFA83279,
    },
    {
      'pagina': TabProductos(),
      'texto': 'Productos',
      'icono': MdiIcons.cartOutline,
      'color': 0xff59189e,
    },
    {
      'pagina': TabNosotros(),
      'texto': 'Nosotros',
      'icono': MdiIcons.informationOutline,
      'color': 0xffe014dd,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(int.parse(pages[curIndex]['color'].toString())),
        leading: Icon(pages[curIndex]['icono'] as IconData),
        title: Text('Porti: ' + pages[curIndex]['texto'].toString()),
      ),
      body: pages[curIndex]['pagina'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        items: pages.map((p) {
          return BottomNavigationBarItem(
            icon: Icon(p['icono'] as IconData),
            label: p['texto'].toString(),
            backgroundColor: Color(int.parse(p['color'].toString())),
          );
        }).toList(),
        currentIndex: curIndex,
        onTap: (index) {
          setState(() {
            curIndex = index;
          });
        },
      ),
    );
  }
}
