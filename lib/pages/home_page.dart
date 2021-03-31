import 'package:flutter/material.dart';
import 'package:projeto_perguntas/components/my_elevated_button.dart';
import 'package:projeto_perguntas/components/resultado.dart';
import 'package:projeto_perguntas/utils/perguntas.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _perguntaSelecionada = 0;
  var _pontuacaoFinal = 0;
  Perguntas perguntasModel = Perguntas();

  bool get temPergunta =>
      _perguntaSelecionada < perguntasModel.perguntas.length;

  void _responde(int pontuacao) {
    setState(() {
      _perguntaSelecionada++;
      _pontuacaoFinal += pontuacao;
    });
  }

  void refazer() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoFinal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPergunta
        ? perguntasModel.perguntas[_perguntaSelecionada]['resposta']
        : null;
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          title: Text('Quiz Tec'),
          centerTitle: true,
        ),
        body: temPergunta
            ? Padding(
                padding: const EdgeInsets.only(
                    top: 50, left: 20, bottom: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      perguntasModel.perguntas[_perguntaSelecionada]
                          ['pergunta'],
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    ...respostas
                        .map((resp) => MyElevatedButton(
                          text: resp['texto'],
                          onPressed: () {
                            _responde(resp['pontuacao']);
                          },
                        ))
                        .toList(),
                    SizedBox(height: 20),
                    Center(
                        child: Text(
                            '${_perguntaSelecionada + 1} / ${perguntasModel.perguntasSizes}',style: TextStyle(color: Colors.grey),))
                  ],
                ),
              )
            : Resultado(
                onpressed: refazer,
                pontuacao: _pontuacaoFinal,
              ));
  }
}
