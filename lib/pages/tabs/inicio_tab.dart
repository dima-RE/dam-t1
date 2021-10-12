import 'package:flutter/material.dart';

class TabIni extends StatelessWidget {
  const TabIni({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Lora Titulo 1',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Lora Subtitulo 1',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Text(
            'Lora Texto 1',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            'Lora Texto 2',
            style: Theme.of(context).textTheme.bodyText2,
          )
        ],
      ),
    );
  }
}
