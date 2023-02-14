import 'package:flutter/material.dart';
import 'package:iefunden/color.dart';
import 'package:image_picker/image_picker.dart';

class UploadTextFieldBox extends StatefulWidget {
  const UploadTextFieldBox({
    super.key,
    required this.label,
    required this.controller,
    required this.onChangeCallback,
  });

  final String label;
  final TextEditingController controller;
  final Function(String) onChangeCallback;

  @override
  State<UploadTextFieldBox> createState() => _UploadTextFieldBoxState();
}

class _UploadTextFieldBoxState extends State<UploadTextFieldBox> {
  final ImagePicker _picker = ImagePicker();

  void onBrowseGallery() async {
    var image = await _picker.pickImage(source: ImageSource.gallery);
    widget.controller.text = image?.name ??
        (widget.controller.text.isNotEmpty ? widget.controller.text : "");
  }

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
                child: InkWell(
                  onTap: () => onBrowseGallery(),
                  child: TextFormField(
                    enabled: false,
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
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.note_add_outlined,
                          size: 20,
                          color: HexColor("#637C8D"),
                        ),
                      ),
                      suffixIconConstraints:
                          const BoxConstraints(maxHeight: 30),
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      disabledBorder: const OutlineInputBorder(
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
              ),
            ],
          ),
        )
      ],
    );
  }
}
