import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key key,
    this.title,
    this.country,
    this.price,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
       // Define um espaçamento horizontal usando a constante kDefaultPadding
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",// Exibe o título na primeira linha
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: kTextColor, fontWeight: FontWeight.bold), // Define o estilo do texto usando o tema definido no contexto, com cor e peso da fonte personalizados
                ),
                TextSpan(
                  text: country,// Exibe o país na segunda linha
                  style: TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,// Define a cor do texto como a cor primária definida por kPrimaryColor
                    fontWeight: FontWeight.w300,// Define o peso da fonte como 300 (leve)
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
