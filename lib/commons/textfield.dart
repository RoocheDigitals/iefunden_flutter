import 'package:flutter/material.dart';

class TextFieldBox extends StatelessWidget {
  const TextFieldBox({
    super.key,
    required this.label,
    required this.color,
    required this.controller,
    required this.onChangeCallback,
  });

  final String label;
  final Color color;
  final TextEditingController controller;
  final Function(String) onChangeCallback;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.black,
                fontSize: 14.0,
              ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  enableSuggestions: false,
                  autocorrect: false,
                  controller: controller,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                  scrollPadding: const EdgeInsets.only(bottom: 300),
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: const EdgeInsets.all(5),
                    fillColor: color,
                    filled: true,
                    border: InputBorder.none,
                  ),
                  onChanged: onChangeCallback,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
