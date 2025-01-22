import 'package:flutter/material.dart';
import 'package:perplexity_clone_app/widgets/search_bar.dart';
import '../widgets/side_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SideBar(),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SearchSection(),
                Container(
                  height: 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
