import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      // Define um espaçamento inferior usando a constante kDefaultPadding
      child: SizedBox(
        height: size.height * 0.8,// Define a altura com base na altura da tela
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                // Define um espaçamento vertical usando a constante kDefaultPadding
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        // Define um preenchimento horizontal usando a constante kDefaultPadding
                        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),
                        // Exibe o ícone usando o caminho do arquivo SVG fornecido
                        onPressed: () {
                          Navigator.pop(context); // Navega de volta para a tela anterior ao ser pressionado
                        },
                      ),
                    ),
                    Spacer(),
                    IconCard(icon: "assets/icons/sun.svg"), // Exibe um ícone usando o caminho do arquivo SVG fornecido
                    IconCard(icon: "assets/icons/icon_2.svg"), // Exibe um ícone usando o caminho do arquivo SVG fornecido
                    IconCard(icon: "assets/icons/icon_3.svg"), // Exibe um ícone usando o caminho do arquivo SVG fornecido
                    IconCard(icon: "assets/icons/icon_4.svg"), // Exibe um ícone usando o caminho do arquivo SVG fornecido
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,// Define a altura com base na altura da tela
              width: size.width * 0.75, // Define a largura com base na largura da tela
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(63),// Define o raio do canto superior esquerdo
                  bottomLeft: Radius.circular(63),// Define o raio do canto superior esquerdo
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),// Define o deslocamento da sombra em relação ao contêiner
                    blurRadius: 60,// Define o raio de desfoque da sombra
                    color: kPrimaryColor.withOpacity(0.29),// Define a cor da sombra usando a constante kPrimaryColor com opacidade reduzida
                  ),
                ],
                image: DecorationImage(
                  alignment: Alignment.centerLeft,// Alinha a imagem ao centro esquerdo do contêiner
                  fit: BoxFit.cover,// Define como a imagem é ajustada dentro do contêiner
                  image: AssetImage("assets/images/img.png"), // Exibe a imagem usando o caminho do arquivo fornecido
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
