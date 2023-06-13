import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);
  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      // Define um preenchimento horizontal usando a constante kDefaultPadding
      child: Row(
        children: <Widget>[
          TitleWithCustomUnderline(text: title),// Widget personalizado TitleWithCustomUnderline
          Spacer(),// Widget Spacer para criar um espaço flexível
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              // Define um formato arredondado para o botão usando um RoundedRectangleBorder
            ),
            color: kPrimaryColor,// Cor de fundo do botão
            onPressed: press, // Função a ser executada quando o botão for pressionado
            child: Text(
              "More",
              style: TextStyle(color: Colors.white),
              // Texto do botão com estilo definido
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      // Define a altura do container
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            // Define um preenchimento à esquerda usando a constante kDefaultPadding
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              // Estilo do texto com tamanho da fonte e peso da fonte definidos
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              // Define uma margem à direita usando a constante kDefaultPadding
              height: 7,
              // Define a altura da linha de sublinhado
              color: kPrimaryColor.withOpacity(0.2),
              // Define a cor da linha de sublinhado com opacidade reduzida
            ),
          )
        ],
      ),
    );
  }
}
