import 'package:flutter/material.dart';
import 'package:imperio/core/components/primary_button.view.dart';
import 'landing_controller.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final _controller = LandingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    width: double.infinity,
                    height: screenHeight / 2,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage("assets/images/landingPageBanner.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 39.0,
                  left: 16.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Entre\nem sua conta",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            height: 1.0),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        "Acompanhe seus jogos,\ncampeonatos e times favoritos",
                        style: TextStyle(
                            fontSize: 13, color: Colors.white, height: 1.2),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 62,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 48),
                      child: ImperioButton(
                        text: "Entrar com o google",
                        height: 56,
                        onPressed: () {
                          print("Google Acces");
                        },
                        backgroundColor: const Color(0xFFE6E6E6),
                        icon: Image.asset("assets/images/googleIcon.png"),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 48),
                      child: ImperioButton(
                          text: "Entrar com Apple",
                          height: 56,
                          onPressed: () {
                            print("Apple Access");
                          },
                          textColor: Colors.white,
                          icon: Image.asset("assets/images/appleIcon.png"),
                          backgroundColor: const Color(0xFF070101)),
                    ),
                  ],
                ),
                const Center(
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Divider(
                            color: Color(0xFFE6E6E6),
                            thickness: 1,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          'ou entre com',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Divider(
                          color: Color(0xFFE6E6E6),
                          thickness: 1,
                        ),
                      )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 37),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: ImperioButton(
                              text: 'Email',
                              height: 56,
                              model: ImperioButtonViewModel.secondary,
                              onPressed: () {},
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        ),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: ImperioButton(
                            text: 'Telefone',
                            height: 56,
                            model: ImperioButtonViewModel.primary,
                            onPressed: () {},
                            backgroundColor: Color(0xFFF5D70A),
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 54,
          ),
        ],
      ),
    );
  }
}
