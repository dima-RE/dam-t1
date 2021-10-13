import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:project_02/widgets/record_box.dart';
import 'package:project_02/widgets/producto_preview.dart';

class TabIni extends StatelessWidget {
  //const TabIni({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  MdiIcons.handHeart,
                  size: 50,
                  color: Color(0xff97306c),
                ),
                Text(
                  ' Porti',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
          ),
          Text(
            'Restaurante',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              border: Border.all(color: Colors.indigoAccent, width: 2),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Especial del día:',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Text(
                  'Cubo de Fideos',
                  style: TextStyle(fontSize: 20),
                ),
                ElevatedButton(
                  child: Text(
                    'Ver',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductoPreview(
                                img: 'p1',
                                nom: 'Cubo de Fideos',
                                prec: '4.500',
                                det: 'El especial del día',
                              )),
                    );
                  },
                )
              ],
            ),
          ),
          BoxImage(
            title: 'Disfruta con nosotros.',
            img: 'e2',
          ),
          BoxImage(
            title: 'Música: Invita la casa.',
            img: 'e4',
          ),
        ],
      ),
    );
  }
}
