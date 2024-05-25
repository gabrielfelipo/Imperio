import 'package:flutter/material.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {},
              child: const SizedBox(
                width: double.infinity,
                height: 52,
                child: Row(
                  children: [
                    Icon(
                      Icons.home_outlined,
                      color: Color(0xff505854),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'Início',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const SizedBox(
                width: double.infinity,
                height: 52,
                child: Row(
                  children: [
                    Icon(
                      Icons.sports_outlined,
                      color: Color(0xff505854),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'Esportes',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const SizedBox(
                width: double.infinity,
                height: 52,
                child: Row(
                  children: [
                    Icon(
                      Icons.bookmark_border_outlined,
                      color: Color(0xff505854),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'Notícias e Dicas',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const SizedBox(
                width: double.infinity,
                height: 52,
                child: Row(
                  children: [
                    Icon(
                      Icons.star_border_outlined,
                      color: Color(0xff505854),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'Favoritos',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const SizedBox(
                width: double.infinity,
                height: 52,
                child: Row(
                  children: [
                    Icon(
                      Icons.groups_outlined,
                      color: Color(0xff505854),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'Influenciadores',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const SizedBox(
                width: double.infinity,
                height: 52,
                child: Row(
                  children: [
                    Icon(
                      Icons.incomplete_circle_outlined,
                      color: Color(0xff505854),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'Comparador de odds',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const SizedBox(
                width: double.infinity,
                height: 52,
                child: Row(
                  children: [
                    Icon(
                      Icons.confirmation_number_outlined,
                      color: Color(0xff505854),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'Jogo consciente',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const SizedBox(
                width: double.infinity,
                height: 52,
                child: Row(
                  children: [
                    Icon(
                      Icons.shield_outlined,
                      color: Color(0xff505854),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'Privacidade e segurança',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}
