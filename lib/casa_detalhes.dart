import 'package:flutter/material.dart';
import 'models/casas.dart';
import 'package:intl/intl.dart';

class CasasDetalhes extends StatefulWidget {
  Casa casa;

  CasasDetalhes({Key? key, required this.casa}) : super(key: key);

  @override
  State<CasasDetalhes> createState() => _CasasDetalhesState();
}

class _CasasDetalhesState extends State<CasasDetalhes> {
  NumberFormat real = NumberFormat.currency(locale: 'pt-Br', name: 'R\$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Detalhes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Image.asset(
                    widget.casa.imagem,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Container(
                    width: 10,
                  ),
                ),
                Text(
                  real.format(widget.casa.preco),
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -1,
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(top: 24),
              child: Text(widget.casa.nome),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(top: 24),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.pinkAccent),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.check),
                    Padding(
                        padding: EdgeInsets.all(16),
                      child: Text('Alugar',
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
