import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/home_screen.dart';
// O pacote flutter/material.dart contém classes e widgets fundamentais para criar interfaces em Flutter. 
// plant_app/constants.dart é um arquivo personalizado que provavelmente contém constantes utilizadas no aplicativo. 
// plant_app/screens/home/home_screen.dart é o arquivo que contém a definição da tela inicial do aplicativo.

void main() {
  runApp(MyApp());// A função main() é o ponto de entrada do aplicativo. 
  // Ela chama a função runApp() para iniciar o aplicativo Flutter e exibir o widget raiz, MyApp().

}

class MyApp extends StatelessWidget {
// A classe MyApp é um widget sem estado (StatelessWidget) que representa o aplicativo em si. 
  // Ela é responsável por retornar um MaterialApp, que é o widget raiz da aplicação Flutter.
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // debugShowCheckedModeBanner: false remove a faixa de debug que aparece no canto superior direito do aplicativo durante o desenvolvimento.
      title: 'Plant App',
      // title: 'Plant App' define o título do aplicativo que será exibido no dispositivo.
      theme: ThemeData(
         //theme: ThemeData(...) define o tema do aplicativo. 
      // Aqui, estamos configurando as cores de fundo (scaffoldBackgroundColor), cor primária (primaryColor), cores de texto (textTheme), e densidade visual (visualDensity).
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      // home: HomeScreen() define a tela inicial do aplicativo como HomeScreen(), que será exibida quando o aplicativo for iniciado.
    );
  }
}
