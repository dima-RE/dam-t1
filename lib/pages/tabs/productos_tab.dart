import 'package:flutter/material.dart';
import 'package:project_02/widgets/producto_preview.dart';

class TabProductos extends StatelessWidget {
  const TabProductos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Hola',
              style: Theme.of(context).textTheme.headline1,
            )
          ],
        ),
        ProductoPreview(
          img: "p1",
          nom: "Jooola",
          prec: "345",
          icon: "no hay",
        ),
      ],
    );
  }
}
