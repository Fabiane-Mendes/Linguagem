import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/components/body.dart';
// O pacote flutter/material.dart contém classes e widgets fundamentais para criar interfaces em Flutter. 
// O arquivo importado body.dart é um widget personalizado que representa o corpo da tela de detalhes.


class DetailsScreen extends StatelessWidget {
  // A classe DetailsScreen é um widget sem estado (StatelessWidget) que representa a tela de detalhes do aplicativo. 
  // Ela é responsável por construir e retornar a estrutura da tela. 
  // No método build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            // Scaffold é um widget que fornece uma estrutura básica para a tela, como um corpo (body).
      body: Body(),
      // body é construído pelo widget Body() e representa o conteúdo principal da tela. 
      // O widget Body é definido em body.dart e contém a estrutura e os componentes da tela de detalhes
    );
  }
}
