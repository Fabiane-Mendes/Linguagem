import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/components/my_bottom_nav_bar.dart';
import 'package:plant_app/screens/home/components/body.dart';
// O pacote flutter/material.dart contém classes e widgets fundamentais para criar interfaces em Flutter. 
// O pacote flutter_svg/svg.dart é utilizado para exibir imagens SVG. 
// Os arquivos importados de my_bottom_nav_bar.dart e body.dart são widgets personalizados que serão utilizados na tela inicial.


class HomeScreen extends StatelessWidget {
  // A classe HomeScreen é um widget sem estado (StatelessWidget) que representa a tela inicial do aplicativo. 
  // Ela é responsável por construir e retornar a estrutura da tela. 
  // No método build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold é um widget que fornece uma estrutura básica para a tela, como uma barra de aplicativo (appBar), corpo (body) e uma barra de navegação inferior (bottomNavigationBar).
      appBar: buildAppBar(),
      body: Body(),
      // body é construído pelo widget Body() e representa o conteúdo principal da tela.
      // O widget Body é definido em body.dart e contém a estrutura e os componentes da tela principal.
      bottomNavigationBar: MyBottomNavBar(),
      // bottomNavigationBar é construída pelo widget MyBottomNavBar() e representa a barra de navegação inferior personalizada.
    );
  }

  AppBar buildAppBar() {
     // appBar é construída pelo método buildAppBar() e define a barra de aplicativo exibida na parte superior da tela. 
    // Neste exemplo, a barra de aplicativo possui uma elevação (elevation) zero e um ícone de menu à esquerda.
    return AppBar(
      elevation: 0,
      // elevation define a elevação da barra de aplicativo. 
      // Neste caso, é definida como zero, o que significa que não há sombra.
      leading: IconButton(
        // leading define um widget que aparece à esquerda da barra de aplicativo. 
        // Neste caso, é um IconButton com um ícone de menu SVG. 
        // O onPressed está vazio neste exemplo, mas você pode adicionar uma função para lidar com eventos de clique no ícone de menu.
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}
