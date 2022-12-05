import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teste_grafos/casas_otica.dart';
import 'package:teste_grafos/casas_restaurante.dart';
import 'package:teste_grafos/menu_option.dart';
import 'package:teste_grafos/recommend_card.dart';
import 'package:teste_grafos/casas_page.dart';
import 'package:teste_grafos/map.dart';
import 'package:teste_grafos/repositories/casa_repo.dart';
import 'package:teste_grafos/teste.dart';

import 'casa_detalhes.dart';
import 'models/casas.dart';

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

Route _rotaRestaurante() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
    const PaginaCasas3(),
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
Route _rotaMapa() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
      MapSample(),
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
  get casa => casa;
  int _page = 0;
  final screens = [
    MyHomePage(),
    PaginaCasas4(),
  ];


  @override
  Widget build(BuildContext context) {
    final tabela_2 = CasaRepo.tabela_2;

    mostrarDetalhes(Casa casa) {
      Navigator.push(context,
          MaterialPageRoute(builder: (_) => CasasDetalhes(casa: casa)));
    }
    
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
                            title: "Hospital",
                            iconData: FontAwesomeIcons.hospital,
                            selected: true,
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          MenuOption(
                            title: "Hotéis",
                            iconData: FontAwesomeIcons.house,
                            selected: false,
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          MenuOption(
                            title: "Terminal",
                            iconData: FontAwesomeIcons.bus,
                            selected: true,
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
                            title: ("Universidade"),
                            iconData: FontAwesomeIcons.book,
                            selected: false,
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          MenuOption(
                            title: "Futebol",
                            iconData: FontAwesomeIcons.futbol,
                            selected: true,
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
                        Navigator.of(context).push(_rotaRestaurante());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          MenuOption(
                            title: "Restaurante",
                            iconData: FontAwesomeIcons.utensils,
                            selected: true,
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
                              selected: true),
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
                  child: GestureDetector(
                    onTap: () => mostrarDetalhes(tabela_2[casa]),
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        RecommendCard(
                          imageUrl: 'assets/images/casa3-universidade.jpeg',
                          title: "Casa próxima à UNEB!",
                          offerEnds: "A oferta acabará em 16 Horas ",
                          startPrices: r"Apenas R$750,00!",
                        ),
                        RecommendCard(
                          imageUrl: 'assets/images/casa2-hospital.png',
                          title: "Casa próxima à Hospital HCA",
                          offerEnds: "A oferta acabará em 15 horas",
                          startPrices: r"Apenas R$850,00!",
                        ),
                      ],
                    ),
                  ),
                ),
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
    color: Colors.pinkAccent,
    padding: EdgeInsets.only(
      top: 24 + MediaQuery.of(context).padding.top,
      bottom: 24
    ),
    child: Column(
      children: [CircleAvatar(
        radius: 52,
        backgroundImage: AssetImage('assets/images/mulher.jpg'),
      ),
        Text('Maria Joaquina', style: TextStyle(fontSize: 16, color: Colors.white),)
      ],
    ),
  );

  Widget buildMenuItems(BuildContext context) => Container(
    padding: const EdgeInsets.all(24),
    child: Wrap(
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
              Navigator.of(context).push(_rotaMapa())
        ),
        Divider(color: Colors.black54),
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
    ),
  );
}
