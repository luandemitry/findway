import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teste_grafos/bottom_item.dart';
import 'package:teste_grafos/menu_option.dart';
import 'package:teste_grafos/recommend_card.dart';
import 'package:teste_grafos/test_rota.dart';

void main() {
  runApp(MyApp());
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const FirstRoute(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),

    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Material(
            elevation: 2,
            child: Padding(
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.menu,
                    color: Color(0xFF2d4d25),
                  ),
                  SizedBox(
                    height: 70,
                    child: Image.asset(
                      'assets/images/logo.png',
                    ),
                  ),
                  Stack(children: <Widget>[
                    Icon(
                      Icons.notifications_none,
                      color: Colors.grey[400],
                    ),
                    Positioned(
                      top: 0.0,
                      right: 0.0,
                      child: Icon(
                        Icons.brightness_1,
                        size: 8.0,
                        color: Color(0xFF2d4d25),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Procure seu caminho',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[400],
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    contentPadding: EdgeInsets.all(20),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 16.0, right: 8.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey[400],
                        size: 28,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(_createRoute());

                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          MenuOption(
                            title: "Ótica",
                            iconData: FontAwesomeIcons.eye,
                            selected: false,
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          MenuOption(
                            title: "Restaurante",
                            iconData:
                                FontAwesomeIcons.utensils,
                            selected: false,
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          MenuOption(
                            title: "Universidade",
                            iconData: FontAwesomeIcons.book,
                            selected: false,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    GestureDetector(
                      onTap: () {
                            Navigator.of(context).push(_createRoute());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          MenuOption(
                            title: "Terminal",
                            iconData: FontAwesomeIcons.bus,
                            selected: false,
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          MenuOption(
                            title: "Pontos Taxi",
                            iconData: FontAwesomeIcons.taxi,
                            selected: false,
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          MenuOption(
                            title: "Bar",
                            iconData: FontAwesomeIcons.martiniGlass,
                            selected: false,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(_createRoute());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          MenuOption(
                            title: "Hotéis",
                            iconData: FontAwesomeIcons.house,
                            selected: false,
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          MenuOption(
                            title: "Lojas",
                            iconData: FontAwesomeIcons.shop,
                            selected: false,
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          MenuOption(
                              title: "Mais",
                              iconData: FontAwesomeIcons.ellipsisVertical,
                              selected: false),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Próximos à você",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Ver todos",
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 130,
                  child: ListView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      RecommendCard(
                        imageUrl: 'assets/images/casa_velha.png',
                        title: "Casa próxima à UNEB!",
                        offerEnds: "A oferta acabará em XX Horas ",
                        startPrices: r"Apenas R$5000,00!",
                      ),
                      RecommendCard(
                        imageUrl: 'assets/images/casa_nova.png',
                        title: "Casa próxima à praça Kennedy",
                        offerEnds: "A oferta acabará em XX horas",
                        startPrices: r"Apenas R$1500,00!",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Container(
            width: double.infinity,
            height: 56,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: 8,
                ),
                BottomItem(
                  title: "Home",
                  iconData: Icons.home,
                  selected: true,
                ),
                SizedBox(
                  width: 4,
                ),
                BottomItem(
                  title: "Orçamento",
                  iconData: FontAwesomeIcons.wallet,
                  selected: false,
                ),
                SizedBox(
                  width: 4,
                ),
                BottomItem(
                  title: "Imóveis",
                  iconData: FontAwesomeIcons.suitcase,
                  selected: false,
                ),
                SizedBox(
                  width: 4,
                ),
                BottomItem(
                  title: "Configurações",
                  iconData: FontAwesomeIcons.gear,
                  selected: false,
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
          ),
        ));
  }
}
