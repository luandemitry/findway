import 'package:flutter/material.dart';
import 'package:teste_grafos/repositories/casa_repo.dart';


const primaryColor = Color(0xFF2d4d25);

class PaginaCasas extends StatelessWidget {
  const PaginaCasas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabela = CasaRepo.tabela;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text('Casas'),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int casa){
            return ListTile(
                leading: SizedBox(
                  height: 200,
                  width: 100,
                  child: Image.asset(tabela[casa].imagem),
                ) ,
                title: Text(tabela[casa].nome),
                trailing: Text(tabela[casa].preco.toString())
            );
          },
          padding: EdgeInsets.all(16),
          separatorBuilder: (_,___) => Divider(),
          itemCount: tabela.length),
    );
  }
}
