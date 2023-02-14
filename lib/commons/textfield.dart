import 'package:flutter/material.dart';
import 'package:iefunden/color.dart';

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
                fontSize: 16.0,
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
                  style: TextStyle(
                    color: HexColor("#637C8D"),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  decoration: InputDecoration(
                    hintText: label,
                    hintStyle: TextStyle(
                      color: HexColor("#637C8D"),
                    ),
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
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
