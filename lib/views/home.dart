import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  final List<String> _frases = [
    "Tudo é Possível quando se é inteligente, corajosa e esperta. - Barbie em O Quebra Nozes",
    "Amor e Imaginação Podem Mudar O Mundo. -  Barbie Rapunzel",
    "Você é mais Corajosa do que Pensa. -  Barbie em O Lago dos Cisnes",
    "Viva Seu Sonho. -  Barbie A Princesa & a Plebéia",
    "O que te faz Diferente faz Você ser Especial. -  Barbie Fairytopia",
    "Sempre há uma Esperança. - Barbie e a Magia de Aladus",
    "Pequena ou Grande, há Sempre uma Coisa que só você Pode Fazer. -  Barbie em as 12 Princesas Bailarinas",
    "Não Leve em Consideração o que Dizem a seu Respeito - O Diário da Barbie",
    "A coisa mais Bonita que você pode ser é você mesmo. - Barbie Fairytopia: A Magia do Arco-Íris",
    "Podem haver milagres á Espera , Eles podem estar mais perto do que sabemos quando temos Amor para nos guiar , á medida que avançamos. - Barbie em A Princesa da Ilha",
    "Juntos somos fortes. - Barbie Butterfly",
    "A Amizade é o Verdadeiro Tesouro. - Barbie e o Castelo de Diamantes",
    "Mantenha a Beleza do Natal no seu Coração a Cada dia do Ano. -  Barbie e a Canção de Natal",
    "Até as Criaturas Pequenas Podem fazer uma Grande Diferença! -  Barbie A Pequena Polegar                                 ",
    "A Verdadeira Coragem é Perseguir seus Sonhos até quando Todo Mundo diz que é Impossível -  Barbie e as Três Mosqueteiras",
    "O que faz Você Diferente Apenas Indica ser sua Maior Força. -  Barbie Vida de Sereia                                    ",
    "A Magia Acontece quando Descobrimos nosso Brilho Próprio (Acredite em si Mesmo). - Barbie Moda & Magia                  ",
    "O Perdão faz Você Voar. -  Barbie e Segredo das Fadas                                                                   ",
    "Há uma Princesa dentro de Toda Garota - Barbie Escola de Princesas                                                      ",
    "Estarmos Juntos é o que Faz um Natal Perfeito - Barbie e o Natal Perfeito                                               ",
    "É Bom fazer parte de algo Maior do que você Mesmo - Barbie em Vida de Sereia 2                                          ",
    "Há uma estrela em você! Qualquer um consegue ver, está na hora de nos mostrar e Cantar! - Barbie A Princesa e a Popstar ",
    "Escute a batida do seu Coração e Continue Dançando - Barbie e as Sapatilhas Mágicas                                     ",
    "A Melhor maneira de Fazer um Amigo é sendo Amigo - Barbie Butterfly e a Princesa Fada                                   ",
    "Se você Ama algo Deixe-o Livre - Barbie e Suas Irmãs em Uma Aventura de Cavalos                                         ",
    "Sempre Deixe as coisas Melhores do que você os Encontrou - Barbie a Sereia das Pérolas                                  ",
    "Você Nunca vai Saber do que é Capaz se não Tentar - Barbie e o Portal Secreto                                           ",
    "O Poder de mudar o Mundo tem estado Dentro de Você o Tempo todo - Barbie Super Princesa                                 ",
  ];

  String _fraseGerada = "Clique abaixo para gerar uma frase";

  void gerarFrase() {
    int aleatorio = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[aleatorio];
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Coach Barbieverse",
              style: const TextStyle(fontFamily: 'Barbie')),
          backgroundColor: Color(0xFFee4a99),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          color: Colors.white,
          padding: const EdgeInsets.all(40),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/img/barbieverse.png',
                  height: 300,
                  width: 300,
                ),
                Text(
                  _fraseGerada,
                  style: const TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Barbie',
                    color: Colors.pink,
                  ),
                  textAlign: TextAlign.justify,
                ),
                ElevatedButton(
                    onPressed: gerarFrase,
                    child: Text('Nova frase'),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF8613f4),
                        textStyle: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Barbie',
                            color: Colors.white)))
              ]),
        ));
  }
}
