import 'package:flutter/material.dart';
import 'package:project_02/widgets/producto_card.dart';

class TabProductos extends StatelessWidget {
  //const TabProductos({Key? key}) : super(key: key);

  var productos = [
    {
      'img': 'p1',
      'nom': 'Cubo de Fideos',
      'prec': '4.500',
    },
    {
      'img': 'p2',
      'nom': 'Jarrón de Fideos + Leche',
      'prec': '6.500',
    },
    {
      'img': 'p3',
      'nom': 'Vasorguesa',
      'prec': '9.000',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: productos.map<Widget>((pr) {
        return Column(
          children: [
            ProductoCard(
              img: pr['img'].toString(),
              nom: pr['nom'].toString(),
              prec: pr['prec'].toString(),
            )
          ],
        );
      }).toList(),
    );
  }
}
