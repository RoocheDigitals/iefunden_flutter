import 'package:flutter/material.dart';
import 'package:iefunden/color.dart';

class PasswordTextFieldBox extends StatefulWidget {
  const PasswordTextFieldBox({
    super.key,
    required this.label,
    required this.controller,
    required this.onChangeCallback,
  });

  final String label;
  final TextEditingController controller;
  final Function(String) onChangeCallback;

  @override
  State<PasswordTextFieldBox> createState() => _PasswordTextFieldBoxState();
}

class _PasswordTextFieldBoxState extends State<PasswordTextFieldBox> {
  bool isVisiblePassword = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
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
                  obscureText: !isVisiblePassword,
                  enableSuggestions: false,
                  autocorrect: false,
                  controller: widget.controller,
                  style: TextStyle(
                    color: HexColor("#637C8D"),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  decoration: InputDecoration(
                    hintText: widget.label,
                    hintStyle: TextStyle(
                      color: HexColor("#637C8D"),
                    ),
                    suffixIcon: InkWell(
                      onTap: () => setState(() {
                        isVisiblePassword = !isVisiblePassword;
                      }),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          isVisiblePassword
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          size: 20,
                          color: HexColor("#637C8D"),
                        ),
                      ),
                    ),
                    suffixIconConstraints: const BoxConstraints(maxHeight: 30),
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
                  onChanged: widget.onChangeCallback,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
