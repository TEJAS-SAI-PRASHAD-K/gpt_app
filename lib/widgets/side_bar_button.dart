import 'package:flutter/material.dart';

class SideBarButton extends StatelessWidget {
  const SideBarButton(
      {super.key,
      required this.isCollapsed,
      required this.icon,
      required this.text});
  final bool isCollapsed;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment:
            isCollapsed ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            child: Icon(
              icon,
              color: Colors.grey,
              size: 36,
            ),
          ),
          isCollapsed
              ? const SizedBox()
              : Text(text,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary)),
        ]);
  }
}
