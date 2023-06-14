import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
// O pacote flutter/material.dart contém classes e widgets fundamentais para criar interfaces em Flutter. 
// O arquivo importado constants.dart provavelmente contém constantes utilizadas no aplicativo.


import 'image_and_icons.dart';
import 'title_and_price.dart';
// Os arquivos importados image_and_icons.dart e title_and_price.dart são widgets personalizados que serão utilizados no corpo da tela de detalhes.


class Body extends StatelessWidget {
   // A classe Body é um widget sem estado (StatelessWidget) que representa o corpo da tela de detalhes do aplicativo. 
  // Ela é responsável por construir e retornar o conteúdo principal da tela. 
  // No método build
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Size size = MediaQuery.of(context).size obtém o tamanho da tela do dispositivo usando o MediaQuery. 
    // Essa informação será usada para ajustar a aparência dos elementos com base no tamanho da tela.
    return SingleChildScrollView(
      // SingleChildScrollView é um widget que permite que seu filho tenha um scroll vertical quando o conteúdo não couber na tela.
      // Ele garante que todo o conteúdo seja rolável, mesmo em telas menores.
      child: Column(
        // Column é um widget que organiza seus filhos em uma coluna vertical. 
        // Aqui, estamos adicionando vários widgets como filhos da coluna.
        children: <Widget>[
          ImageAndIcons(size: size),
                    // ImageAndIcons(size: size) é um widget personalizado importado que provavelmente contém a exibição da imagem e ícones relacionados à planta.
          TitleAndPrice(title: "Angelica", country: "Russia", price: 440),
          // TitleAndPrice(title: "Angelica", country: "Russia", price: 440) é outro widget personalizado importado que provavelmente contém o título, país de origem e preço da planta.
          SizedBox(height: kDefaultPadding),
           // SizedBox(height: kDefaultPadding) adiciona um espaço vertical entre os widgets.
          Row(
            // Row é um widget que organiza seus filhos em uma linha horizontal. 
            // Aqui, estamos adicionando dois FlatButton como filhos da linha.
            children: <Widget>[
              SizedBox(
                 // SizedBox(width: size.width / 2, height: 84) define um tamanho específico para o primeiro FlatButton usando metade da largura da tela.
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    // shape define a forma do botão. Neste caso, um retângulo com o canto superior direito arredondado.
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: kPrimaryColor,
                  // color define a cor de fundo do botão.
                  onPressed: () {},
                  // onPressed define a função a ser chamada quando o botão for pressionado.
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                   // FlatButton é um botão de material retangular com um rótulo de texto. Neste exemplo, temos dois botões.
                  onPressed: () {},
                  child: Text("Description"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
