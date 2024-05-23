import 'dart:io';
import 'package:flutter/material.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 166, // Defina a altura fixa para o ListView horizontal
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: CampeonatoCard(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CampeonatoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 270, // Ajuste o tamanho conforme necessário
          height: 166, // Altura fixa do cartão
          decoration: BoxDecoration(
            color: const Color(0xFFFDE047), // Cor de fundo amarela
            borderRadius: BorderRadius.circular(20), // Bordas arredondadas
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Campeonatos',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'populares',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Image.asset(
            'assets/images/playerHome.png', // Caminho para a imagem nos ativos
            width: 200, // Ajuste o tamanho da imagem conforme necessário
            height: 166, // Altura fixa da imagem para sobrepor corretamente
            fit: BoxFit.fitWidth,
          ),
        ),
      ],
    );
  }
}
