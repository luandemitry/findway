import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teste_grafos/casas_otica.dart';
import 'package:teste_grafos/menu_option.dart';
import 'package:teste_grafos/recommend_card.dart';
import 'package:teste_grafos/casas_page.dart';
import 'package:teste_grafos/map.dart';

void main() {
  runApp(MyApp());
}
Route _rotaHome () {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        MyHomePage(),
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
Route _rotaPagina () {
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

Route _rotaOtica() {
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
  int _page = 0;
  final screens = [
    MyHomePage(),
    PaginaCasas3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text('FindWay'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: _page != 0 ? screens[_page] :
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(_rotaPagina());
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
                        Navigator.of(context).push(_rotaOtica());
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
                        Navigator.of(context).push(_rotaPagina());
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
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            backgroundColor: Colors.pinkAccent.withOpacity(0.05),
            indicatorColor: Colors.pinkAccent.withOpacity(0.2),
            labelTextStyle: MaterialStatePropertyAll(
                const TextStyle(fontSize: 14, fontWeight: FontWeight.w500))),
        child: NavigationBar(
          onDestinationSelected: (index)=>
          setState(()=> this._page = index),
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

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),
        ],
      ),
    ),
  );
  Widget buildHeader(BuildContext context ) => Container(
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).padding.top,
    ),
  );

  Widget buildMenuItems(BuildContext context) => Wrap(
    runSpacing: 16,
    children: [
      ListTile(
        leading: const Icon(Icons.home_outlined),
        title: const Text('Home'),
        onTap: ()=>
            Navigator.of(context).push(_rotaHome()),
      ),
      ListTile(
        leading: const Icon(Icons.map_outlined),
        title: const Text('Mapa'),
        onTap: () =>
            Navigator.of(context).push(_rotaHome())
      ),
      ListTile(
        leading: const Icon(Icons.settings),
        title: const Text('Configurações'),
        onTap: (){},
      ),
      ListTile(
        leading: const Icon(Icons.notifications),
        title: const Text('Notificações'),
        onTap: (){},
      ),
      ListTile(
        leading: const Icon(Icons.favorite),
        title: const Text('Favoritos'),
        onTap: (){},
      ),
    ],
  );
}
