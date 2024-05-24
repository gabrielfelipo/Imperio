import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:imperio/core/components/primary_button.view.dart';
import 'search_controller.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _controller = SearchControllerPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 110,
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xfffcf6cf), Color(0xfffcfaea)],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        title: Column(
          children: [
            Row(
              children: [
                ImperioButton(
                  height: 32,
                  width: 32,
                  onPressed: () {
                    print("metra");
                  },
                  backgroundColor: const Color(0xfff5d70a),
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 16,
                  ),
                ),
                const SizedBox(
                  width: 9.0,
                ),
                const Text(
                  "Esportes",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search...',
                    prefixIcon: const Icon(Icons.search),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(48.0),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 4.0)),
              ),
            ),
          ],
        ),
      ),
      body: Stack(children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
        ),
        Container(
          height: 500,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              const Color(0xfff5d70a).withOpacity(0.21),
              const Color(0xffffffff).withOpacity(0)
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
        ),
        const SizedBox(height: 32.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 16.0),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 9.0,
                    crossAxisSpacing: 9.0,
                  ),
                  itemCount: 25,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 128,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2EED6),
                        borderRadius: BorderRadius.circular(36),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.sports_soccer,
                            size: 31,
                            color: Colors.black,
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Volei',
                            style: const TextStyle(
                                color: Color(0xFF505854),
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 32.0),
            ],
          ),
        ),
      ]),
    );
  }
}
