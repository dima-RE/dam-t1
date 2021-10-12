import 'package:flutter/material.dart';

class ProductoPreview extends StatelessWidget {
  //const ProductoPreview({Key? key}) : super(key: key);
  final String img, nom, prec, icon;

  ProductoPreview({
    this.img = "",
    this.nom = "",
    this.prec = "",
    this.icon = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Contenedor del elemento
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10),
      height: 450,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        border: Border.all(color: Colors.indigoAccent),
      ),
      // Elemento
      child: Column(
        children: [
          Image(
            width: 300,
            image: AssetImage('assets/images/productos/$img.jpg'),
          ),
          Container(
            child: Column(
              children: [
                Text(
                  nom,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Text(
                  'Precio: \$ $prec',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                OutlinedButton(
                  child: Text('Ver'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
