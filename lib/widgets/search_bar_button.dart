import 'package:flutter/material.dart';

class SearchBarButton extends StatefulWidget {
  const SearchBarButton({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  State<SearchBarButton> createState() => _SearchBarButtonState();
}

class _SearchBarButtonState extends State<SearchBarButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: isHovered
              ? const Color.fromRGBO(
                  21, 101, 192, 1.0) // Material Design dark blue
              : Colors.transparent, 
        ),
        child: Row(
          children: [
            Icon(
              widget.icon,
              color: Colors.grey,
              size: 20,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(widget.text, style: const TextStyle(color: Colors.grey))
          ],
        ),
      ),
    );
  }
}
