import 'package:flutter/material.dart';
import 'package:project_02/widgets/producto_card.dart';

class TabProductos extends StatelessWidget {
  //const TabProductos({Key? key}) : super(key: key);

  var productos = [
    {
      'img': 'p1',
      'nom': 'Cubo de Fideos',
      'prec': '4.500',
      'det':
          'Hecho con la mayor dedicación de nuestros chefs, te traemos este hermoso y apetitoso cubo de fideos. Ideal para compartir con familiares y amigos.',
    },
    {
      'img': 'p2',
      'nom': 'Jarrón de Fideos + Leche',
      'prec': '6.500',
      'det':
          '¿Recordaís la escena de La Dama y el Vagabundo donde toman un mismo fideo y unen sus labios por la atracción al succionar el fideo? Pues ahora podeís replicarlo en un jarrón, para poder tener más cercanía con esa persona tan especial en tu vida. Viene con un vaso de leche para degustar mejor.',
    },
    {
      'img': 'p3',
      'nom': 'Vasorguesa',
      'prec': '9.000',
      'det':
          'Porque lo extravagante no es lo único que trabajamos. Hemos traído esta espectacular obra de arte de nuestro chef maestro, quién se inspiró luego de leer una serie de mangas en sus vacaciones (sí, el chef adora los mangas).',
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
              det: pr['det'].toString(),
            )
          ],
        );
      }).toList(),
    );
  }
}
