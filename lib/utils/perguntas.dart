class Perguntas {
  final perguntas = const [
    {
      'pergunta': 'Qual linguagem de programação é usada no flutter ?',
      'resposta': [
        {'texto': 'Java', 'pontuacao': 0},
        {'texto': 'Dart', 'pontuacao': 4},
        {'texto': 'Javascript', 'pontuacao': 0},
        {'texto': 'C++', 'pontuacao': 0},
      ]
    },
    {
      'pergunta': 'Qual é o framework mais usado no mobile atualmente ?',
      'resposta': [
        {'texto': 'Flutter', 'pontuacao': 0},
        {'texto': 'React native', 'pontuacao': 3},
        {'texto': 'Ionic', 'pontuacao': 0},
        {'texto': 'Xamarim', 'pontuacao': 0},
      ]
    },
    {
      'pergunta': 'Qual o canal de tecnologia que mais aborda sobre flutter ?',
      'resposta': [
        {'texto': 'flutterando', 'pontuacao': 3},
        {'texto': 'Cod3er', 'pontuacao': 0},
        {'texto': 'Softblue', 'pontuacao': 0},
        {'texto': 'Rocketseat', 'pontuacao': 0},
      ]
    },
    
  ];

  int get perguntasSizes => perguntas.length;
}
