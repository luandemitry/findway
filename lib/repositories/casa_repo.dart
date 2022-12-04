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
        preco: 600),
  ];
}
