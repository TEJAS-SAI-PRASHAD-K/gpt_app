import 'package:flutter/material.dart';
import 'package:perplexity_clone_app/widgets/search_bar_button.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "What can I help with?",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 32,
        ),
        Container(
          width: 300,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(9),
          ),
          child: Column(
            children: [
              TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(8),
                  hintText: "Ask me anything",
                  hintStyle: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 16,
                  ),
                  border: InputBorder.none,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const SearchBarButton(
                        icon: Icons.auto_awesome, text: "Focus"),
                    const SizedBox(
                      width: 12,
                    ),
                    const SearchBarButton(
                        icon: Icons.add_circle_outline_outlined,
                        text: "Attach"),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(9),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(40)),
                      child: Icon(
                        Icons.arrow_forward,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
