import 'package:flutter/material.dart';

class ProductoPreview extends StatelessWidget {
  //const ProductoPreview({Key? key}) : super(key: key);
  final String img, nom, prec, det;

  ProductoPreview({
    this.img = "",
    this.nom = "",
    this.prec = "",
    this.det = "",
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Text(nom),
          elevation: 0,
        ),
        //singleChildScroll en caso de que no pueda ser utilizado por toda la pantalla
        body: Container(
          child: Column(
            children: [
              Flexible(
                child: Container(
                  width: double.infinity,
                  height: 350,
                  color: Colors.deepPurple[300],
                  child: Stack(
                    //se utiliza para evitar que un elemento de corte fuera del stack
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        bottom: 10,
                        left: 200,
                        child: Container(
                          color: Colors.black26,
                          width: 200,
                          height: 180,
                        ),
                      ),
                      Positioned(
                        bottom: 200,
                        left: 40,
                        child: Container(
                          color: Colors.white54,
                          width: 140,
                          height: 140,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Image(
                          //width: 250,
                          height: 220,
                          image: AssetImage('assets/images/productos/$img.jpg'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Text(
                      nom,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      'Precio: \$ ' + prec,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  det,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              ElevatedButton(
                child: Text(
                  'Volver',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ));
  }
}

//exportar a un archivo DART aparte
class exampleBox extends StatelessWidget {
  const exampleBox({
    required this.color,
    required this.text,
    Key? key,
  }) : super(key: key);

  final int color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: double.infinity,
      color: Color(this.color),
      alignment: Alignment.center,
      child: Text(
        this.text,
        style: TextStyle(
            fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
