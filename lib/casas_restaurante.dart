import 'package:flutter/material.dart';
import 'package:teste_grafos/repositories/casa_repo.dart';


const primaryColor = Color(0xFFf345e2);

class PaginaCasas3 extends StatelessWidget {
  const PaginaCasas3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabela_3 = CasaRepo.tabela_3;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Casas'),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int casa){
            return ListTile(
                leading: SizedBox(
                  height: 200,
                  width: 100,
                  child: Image.asset(tabela_3[casa].imagem),
                ) ,
                title: Text(tabela_3[casa].nome),
                trailing: Text(tabela_3[casa].preco.toString(), style: TextStyle(
                  fontWeight: FontWeight.bold
                ),)
            );
          },
          padding: EdgeInsets.all(16),
          separatorBuilder: (_,___) => Divider(),
          itemCount: tabela_3.length),
    );
  }
}