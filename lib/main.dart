import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teste_grafos/casas_otica.dart';
import 'package:teste_grafos/menu_option.dart';
import 'package:teste_grafos/recommend_card.dart';
import 'package:teste_grafos/casas_page.dart';

void main() {
  runApp(MyApp());
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const PaginaCasas(),
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

Route _createRoute2() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const PaginaCasas2(),
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
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Material(
          elevation: 2,
          child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.menu,
                  color: Color(0xFFf345e2),
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
                      color: Color(0xFFf345e2),
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
                          selected: true,
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        MenuOption(
                          title: "Restaurante",
                          iconData: FontAwesomeIcons.utensils,
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
                      Navigator.of(context).push(_createRoute2());
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
                          title: "Futebol",
                          iconData: FontAwesomeIcons.futbol,
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
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            backgroundColor: Colors.pinkAccent.withOpacity(0.05),
            indicatorColor: Colors.pinkAccent.withOpacity(0.2),
            labelTextStyle: MaterialStatePropertyAll(
                const TextStyle(fontSize: 14, fontWeight: FontWeight.w500))),
        child: NavigationBar(
          selectedIndex: page,
          destinations: const [
            NavigationDestination(
              icon: Icon(
                FontAwesomeIcons.house,
                size: 23,
              ),
              selectedIcon: Icon(
                FontAwesomeIcons.houseUser,
                size: 23,
              ),
              label: 'Home',
            ),
            NavigationDestination(
                icon: Icon(FontAwesomeIcons.map),
                selectedIcon: Icon(FontAwesomeIcons.mapLocationDot),
                label: 'Mapa'),
          ],
        ),
      ),
    );
  }
}
