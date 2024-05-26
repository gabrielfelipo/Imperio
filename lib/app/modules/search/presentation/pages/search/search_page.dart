import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/core/components/primary_button.view.dart';
import 'search_controller.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final controller = Modular.get<SearchControllerPage>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        toolbarHeight: 110,
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.center,
              colors: [Color(0xfffcf6cf), Color(0xfffefdf3)],
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
                    controller.previous();
                  },
                  backgroundColor: const Color(0xfff5d70a),
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 16,
                  ),
                ),
                const SizedBox(
                  width: 8.0,
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
              height: 16,
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
                    borderSide: const BorderSide(
                      color: Color(0xFFF1F1F1),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(48.0),
                    borderSide: const BorderSide(
                      color: Color(0xFFF1F1F1),
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(48.0),
                    borderSide: const BorderSide(
                      color: Color(0xFFF1F1F1),
                      width: 2.0,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 4.0),
                ),
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
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xfffefdf3), Color(0xffffffff)],
                begin: Alignment.topCenter,
                end: Alignment.center),
          ),
        ),
        const SizedBox(height: 32.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 16.0),
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    double itemWidth = (constraints.maxWidth - (2 * 9)) / 3;
                    double itemHeight = 128.0;
                    double aspectRatio = itemWidth / itemHeight;

                    return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 9.0,
                        crossAxisSpacing: 9.0,
                        childAspectRatio: aspectRatio,
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
                                style: TextStyle(
                                  color: Color(0xFF505854),
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
