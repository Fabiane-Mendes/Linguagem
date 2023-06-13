import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'featurred_plants.dart';
import 'header_with_seachbox.dart';
import 'recomend_plants.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
     // permite a rolagem em um dispositivo pequeno
    // it enable scrolling on small device
    return SingleChildScrollView(
      // Widget SingleChildScrollView permite que o conteúdo seja rolado verticalmente
      child: Column(
        // Widget Column para organizar os elementos verticalmente
        crossAxisAlignment: CrossAxisAlignment.start,
        // Alinha os elementos à esquerda
        children: <Widget>[
          HeaderWithSearchBox(size: size),// Widget personalizado HeaderWithSearchBox
          TitleWithMoreBtn(title: "Recomended", press: () {}),// Widget personalizado TitleWithMoreBtn
          RecomendsPlants(),// Widget personalizado RecomendsPlants
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),// Widget personalizado TitleWithMoreBtn
          FeaturedPlants(),// Widget personalizado FeaturedPlants
          SizedBox(height: kDefaultPadding),// Espaçamento vertical definido por kDefaultPadding
        ],// Outros elementos podem ser adicionados aqui
      ),
    );
  }
}
