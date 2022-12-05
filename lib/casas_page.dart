import 'package:flutter/material.dart';
import 'package:teste_grafos/repositories/casa_repo.dart';
import 'models/casas.dart';
import 'package:teste_grafos/casa_detalhes.dart';

const primaryColor = Color(0xFFf345e2);

class PaginaCasas extends StatelessWidget {
  const PaginaCasas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabela = CasaRepo.tabela;

    mostrarDetalhes(Casa casa) {
      Navigator.push(context,
          MaterialPageRoute(builder: (_) => CasasDetalhes(casa: casa)));
    }

    ;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Casas'),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int casa) {
            return ListTile(
                leading: SizedBox(
                  height: 200,
                  width: 100,
                  child: Image.asset(tabela[casa].imagem),
                ),
                title: Text(tabela[casa].nome),
                trailing: Text(
                  tabela[casa].preco.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              onTap: () => mostrarDetalhes(tabela[casa]),
            );
          },
          padding: EdgeInsets.all(16),
          separatorBuilder: (_, ___) => Divider(),
          itemCount: tabela.length),
    );
  }
}
