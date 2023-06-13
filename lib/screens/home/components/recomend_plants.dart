import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/details_screen.dart';

import '../../../constants.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // Permite a rolagem horizontal
      scrollDirection: Axis.horizontal,
      child: Row(
        // Organiza os elementos horizontalmente
        children: <Widget>[
          RecomendPlantCard(
            // Widget personalizado RecomendPlantCard
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: () {
              // Função a ser executada quando o card for pressionado
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                  // Navega para a tela de detalhes (provavelmente personalizada)
                ),
              );
            },
          ),
          RecomendPlantCard(
            // Outro RecomendPlantCard com diferentes propriedades
            image: "assets/images/image_2.png",
            title: "Angelica",
            country: "Russia",
            price: 440,
            press: () {
               // Função a ser executada quando o card for pressionado
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                  // Navega para a tela de detalhes (provavelmente personalizada)
                ),
              );
            },
          ),
          RecomendPlantCard(
             // Mais um RecomendPlantCard com diferentes propriedades
            image: "assets/images/image_3.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: () {},
            // Ação vazia ao pressionar o card
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  const RecomendPlantCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // Obtém o tamanho da tela
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
        // Define as margens do container
      ),
      width: size.width * 0.4,
      // Define a largura do container como 40% da largura da tela
      child: Column(
        children: <Widget>[
          Image.asset(image),
          // Exibe uma imagem com base no caminho fornecido
          GestureDetector(
            onTap: press,
            // Adiciona um GestureDetector para detectar o toque no container
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              // Define um preenchimento interno no container
              decoration: BoxDecoration(
                color: Colors.white,
                // Define a cor de fundo do containe
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                // Define bordas arredondadas na parte inferior do container
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
