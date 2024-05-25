import 'package:flutter/material.dart';
import 'package:imperio/core/components/primary_button.view.dart';

class MenuAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MenuAppBar({Key? key}) : super(key: key);

  @override
  _MenuAppBarState createState() => _MenuAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(80.0);
}

class _MenuAppBarState extends State<MenuAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 6, bottom: 0, left: 16, right: 8),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 0.5,
                    blurRadius: 6,
                    offset: const Offset(0, 0),
                  )
                ],
              ),
              child: ImperioButton(
                  height: 40,
                  icon: const Icon(
                    Icons.search_rounded,
                    size: 20,
                    color: Color(0xff505854),
                  ),
                  onPressed: () {},
                  backgroundColor: Colors.white,
                  width: 40),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 6, bottom: 0, left: 8, right: 16),
            child: Container(
              height: 40,
              width: 155,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 0.5,
                    blurRadius: 6,
                    offset: const Offset(0, 0),
                  )
                ],
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                onPressed: () {},
                child: const Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.help_outline_rounded,
                      size: 20,
                      color: Color(0xff505854),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Ajuda e suporte',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: Container(
            color: const Color(0xffefefef),
            height: 1,
            width: double.infinity,
          )),
    );
  }
}

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  _HomeAppBarState createState() => _HomeAppBarState();

  @override
  Size get preferredSize =>
      const Size.fromHeight(80.0); // Defina a altura desejada para a AppBar
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xfffcf6cf),
      elevation: 0,
      centerTitle: true,
      title: Image.asset(
        'assets/images/imperioLogo.png',
        height: 25,
      ),
      surfaceTintColor: const Color(0xfffcf6cf),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(40.0),
        child: Container(
          color: const Color(0xfffcf6cf),
          child: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            labelStyle: TextStyle(
              fontSize: 12,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 12,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w700,
            ),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.sports_outlined,
                      size: 20,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Todos',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.sports_soccer_outlined,
                      size: 20,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Futebol',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.sports_basketball_outlined,
                      size: 20,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Basquete',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.sports_esports_outlined,
                      size: 20,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'E-Sports',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
