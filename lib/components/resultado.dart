import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final Function onpressed;
  final int pontuacao;

  Resultado({this.onpressed, this.pontuacao});

  String get fraseResultado {
    if (pontuacao < 5) {
      return 'TENTE OUTRA VEZ';
    } else if (pontuacao < 6) {
      return 'PARABÉNS';
    } else if (pontuacao <= 7) {
      return 'ÓTIMO';
    } else {
      return 'EXCELENTE';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              fraseResultado,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: pontuacao < 5 ? Colors.red : Colors.green
              ),
              textAlign: TextAlign.center,
              
            ),
          ),
          Text(
            'Minha pontuação: $pontuacao',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 30),
          Container(
            height: 50,
            width: 350,
            child: ElevatedButton(
              onPressed: onpressed,
              child: Text(
                'REFAZER',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
