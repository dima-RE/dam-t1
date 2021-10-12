import 'package:flutter/material.dart';
import 'package:project_02/widgets/producto_preview.dart';

class ProductoCard extends StatelessWidget {
  //const ProductoPreview({Key? key}) : super(key: key);
  final String img, nom, prec;

  ProductoCard({
    this.img = "",
    this.nom = "",
    this.prec = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Contenedor del elemento
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: 450,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        border: Border.all(color: Colors.indigoAccent),
      ),
      // Elemento
      child: Column(
        children: [
          Image(
            height: 300,
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductoPreview(
                                img: img,
                                nom: nom,
                                prec: prec,
                                det: 'Hola',
                              )),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}