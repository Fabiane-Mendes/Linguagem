import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// O pacote flutter/material.dart contém classes e widgets fundamentais para criar interfaces em Flutter. 
// O pacote flutter_svg/flutter_svg.dart permite exibir imagens SVG no aplicativo. 

import '../constants.dart';
// ../constants.dart é um arquivo personalizado que contém constantes utilizadas no aplicativo.

class MyBottomNavBar extends StatelessWidget {
  // A classe MyBottomNavBar é um widget sem estado (StatelessWidget) que representa uma barra de navegação inferior personalizada. 
  // Ela recebe uma chave (Key) como argumento, que é usada para identificar e diferenciar widgets.
  const MyBottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // O método build é responsável por construir e retornar o widget final. 
    // Nesse caso, o widget é um Container que representa a barra de navegação inferior
    return Container(
      padding: EdgeInsets.only(
        // padding define o espaçamento interno do container, deixando um espaço à esquerda, à direita e na parte inferior.
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ),
      height: 80,
       // height define a altura da barra de navegação.
      decoration: BoxDecoration(
        // decoration define a aparência visual da barra de navegação. 
        // Neste caso, ela possui uma cor de fundo branca e uma sombra.
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
          // child define o conteúdo da barra de navegação. É um Row que contém três  
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton( // IconButton, cada um representando um ícone de navegação.
            
            icon: SvgPicture.asset("assets/icons/flower.svg"),
            onPressed: () {},
          ),
          IconButton( // IconButton, cada um representando um ícone de navegação.
            icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
            onPressed: () {},
          ),
          IconButton( // IconButton, cada um representando um ícone de navegação.
            icon: SvgPicture.asset("assets/icons/user-icon.svg"),
            onPressed: () {},
            // Dentro de IconButton, temos SvgPicture.asset que carrega um arquivo SVG de um diretório específico (assets/icons/flower.svg, assets/icons/heart-icon.svg, assets/icons/user-icon.svg). 
          // Eles são exibidos como ícones na barra de navegação. 
          // O onPressed está vazio neste exemplo, mas você pode adicionar uma função para lidar com eventos de clique nesses ícones.
          ),
        ],
      ),
    );
  }
}
