import 'package:teste_grafos/models/casas.dart';

class CasaRepo {
  //hospital
  static List<Casa> tabela = [
    Casa(
        imagem: 'assets/images/casa1-hospital.jpeg',
        nome: 'R. José Olimpio, 61 Casa ao HCA (160m)',
        preco: 750),
    Casa(
        imagem: 'assets/images/casa2-hospital.png',
        nome: 'R. Pedro II, 87 (230m) Casa próxima ao hospital Dantas Bião',
        preco: 800),
    Casa(
        imagem: 'assets/images/casa3-hospital.jpeg',
        nome: 'R. Joel Carvalho, 116 Casa com 2/4 próximo ao HCA (400m)',
        preco: 850),
    Casa(
        imagem: 'assets/images/casa4-hospital.png',
        nome: ' Av. Martineli, 105. Casa com 2/4 proxima a Clínica vida (300m)',
        preco: 600),
    Casa(
        imagem: 'assets/images/casa5-hospital.png',
        nome: 'R. Geraldo Leal, 139 (350m). Casa (1º andar) próxima a Clínica Masterfisio',
        preco: 880),
    Casa(
        imagem: 'assets/images/casa6-hospital.png',
        nome: '56 Av. Lafaiete. Casa próxima a Clínica CSH (200m)',
        preco: 900),
    Casa(
        imagem: 'assets/images/casa7-hospital.png',
        nome: 'R. José Galdino Maia. Casa próxima a Clínica Sermec (320m)',
        preco: 680),


  ];
  //universidade
  static List<Casa> tabela_2 = [
    Casa(
        imagem: 'assets/images/casa1-universidade.jpeg',
        nome: 'Av. Democratas Casa no Jardim Petrolar, próximo a UNEB (4 km)',
        preco: 900),
    Casa(
        imagem: 'assets/images/casa2-universidade.jpeg',
        nome: ' R. Jonas de Melo Pereira, 15Casa com 2/4, próximo a UNEB (3,9 km)',
        preco: 800),
    Casa(
        imagem: 'assets/images/casa3-universidade.jpeg',
        nome: 'R. São José Casa com 4/4, próximo a UNEB (4,1 km)',
        preco: 1200),
  ];

  //restaurante
  static List<Casa> tabela_3 = [
    Casa(
        imagem: 'assets/images/casa1-restaurante.jpeg',
        nome: 'Tv. João Crisôstomo Casa com 2/4, próximo ao restaurante O Paraense (83m)',
        preco: 650),
    Casa(
        imagem: 'assets/images/casa2-restaurante.jpeg',
        nome: 'Av. Bahia Casa com 3/4, próximo ao restaurante Rico´s Petiscaria e Burger (450m)',
        preco: 800),
    Casa(
        imagem: 'assets/images/casa3-restaurante.jpeg',
        nome: 'R. Caminho Vinte e Dois Casa com 2/4, próximo ao restaurante Dona Marly (160m)',
        preco: 730),
    Casa(
        imagem: 'assets/images/casa4-restaurante.png',
        nome: 'Casa (1º andar), R. Alecrim, 27, próximo ao Acarajé da Ligia (80m)',
        preco: 700),
    Casa(
        imagem: 'assets/images/casa5-restaurante.png',
        nome: 'Casa com 2/4, R. Dr. Oscár Rabêlo, 238. Próximo a pizzaria Afrodisiaco (450m)',
        preco: 680),
    Casa(
        imagem: 'assets/images/casa6-restaurante.png',
        nome: 'R. Santa Clara, 230  Casa com 2/4, próximo a Bigs bar e pestiscaria (900m)',
        preco: 650),
    Casa(
        imagem: 'assets/images/casa7-restaurante.png',
        nome: 'Casa (1º andar), com 3/4. Travessa Severino Vieira, próximo a Restaurante da Fia (1km)',
        preco: 950),
  ];
}