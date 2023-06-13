import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      // Define uma margem inferior usando a constante kDefaultPadding
      // It will cover 20% of our total height
      height: size.height * 0.2,
      // Define a altura do container como 20% da altura total da tela
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            // Define um preenchimento interno no container
            height: size.height * 0.2 - 27,
            // Define a altura do container interna
            decoration: BoxDecoration(
              color: kPrimaryColor,
              // Define a cor de fundo do container
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
                // Define bordas arredondadas na parte inferior do container
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Hi Uishopy!',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  // Estilo do texto
                ),
                Spacer(),
                Image.asset("assets/images/logo.png")
                // Exibe uma imagem com base no caminho fornecido
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
               // Define uma margem horizontal usando a constante kDefaultPadding
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              // Define um preenchimento horizontal no container
              height: 54,
              // Define a altura do container
              decoration: BoxDecoration(
                color: Colors.white,
                // Define a cor de fundo do container
                borderRadius: BorderRadius.circular(20),
                 // Define bordas arredondadas no container
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
                // Adiciona uma sombra ao container
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                       // Função chamada quando o texto é alterado
                      decoration: InputDecoration(
                        hintText: "Search",
                        // Define o texto de dica
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                        // Define o estilo do texto de dica
                        enabledBorder: InputBorder.none,
                         // Remove a borda quando o campo não está selecionado
                        focusedBorder: InputBorder.none,
                        // Remove a borda quando o campo está selecionado
                        // surffix isn't working properly  with SVG
                        // thats why we use row
                        // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg"),
                  // Exibe uma imagem SVG com base no caminho fornecido
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
