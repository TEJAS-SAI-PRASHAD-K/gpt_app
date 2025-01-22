import 'package:flutter/material.dart';
import 'package:perplexity_clone_app/widgets/side_bar_button.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool isCollapsed = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastEaseInToSlowEaseOut,
      color: Theme.of(context).colorScheme.primary,
      width: isCollapsed ? 64 : 150,
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: const Icon(
              Icons.menu_open_outlined,
              color: Colors.grey,
              size: 36,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: isCollapsed
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 32,
                ),
                SideBarButton(
                    isCollapsed: isCollapsed, icon: Icons.add, text: "home1"),
                SideBarButton(
                    isCollapsed: isCollapsed,
                    icon: Icons.search,
                    text: "home2"),
                SideBarButton(
                    isCollapsed: isCollapsed,
                    icon: Icons.language,
                    text: "home3"),
                SideBarButton(
                    isCollapsed: isCollapsed,
                    icon: Icons.auto_awesome,
                    text: "home4"),
                SideBarButton(
                    isCollapsed: isCollapsed,
                    icon: Icons.cloud_outlined,
                    text: "home5"),
              ],
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              setState(() {
                isCollapsed = !isCollapsed;
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Icon(
                isCollapsed
                    ? Icons.keyboard_arrow_right
                    : Icons.keyboard_arrow_left,
                color: Colors.grey,
                size: 36,
              ),
            ),
          ),
          const SizedBox(
            height: 28,
          ),
        ],
      ),
    );
  }
}
