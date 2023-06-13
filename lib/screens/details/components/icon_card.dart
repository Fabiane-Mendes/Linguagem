import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key key,
    this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      // Define uma margem vertical proporcional à altura da tela
      padding: EdgeInsets.all(kDefaultPadding / 2),
      // Define um preenchimento interno
      height: 62,// Define a altura do contêiner
      width: 62, // Define a largura do contêiner
      decoration: BoxDecoration(
        color: kBackgroundColor,// Define a cor de fundo usando a constante kBackgroundColor
        borderRadius: BorderRadius.circular(6),// Define o raio do canto usando um valor de borda circular
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),// Define o deslocamento da sombra em relação ao contêiner
            blurRadius: 22,// Define o raio de desfoque da sombra
            color: kPrimaryColor.withOpacity(0.22),// Define a cor da sombra usando a constante kPrimaryColor com opacidade reduzida
          ),
          BoxShadow(
            offset: Offset(-15, -15)// Define o deslocamento da sombra em relação ao contêiner
            blurRadius: 20,// Define o raio de desfoque da sombra
            color: Colors.white, // Define a cor da sombra como branco
          ),
        ],
      ),
      child: SvgPicture.asset(icon),// Exibe o ícone usando o caminho do arquivo SVG fornecido
    );
  }
}
