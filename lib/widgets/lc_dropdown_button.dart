import 'package:flutter/material.dart';

class LcDropdownButton<T> extends StatelessWidget {
  const LcDropdownButton({
    super.key,
    required this.value,
    this.label,
    this.onChanged,
    this.items,
  });

  final String? label;
  final T value;
  final Function(T? value)? onChanged;
  final List<DropdownMenuItem<T>>? items;

  final inputBorder = const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(8),
    ),
    borderSide: BorderSide(
      color: Colors.black54,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Text(
            label!,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
        ],
        DropdownButtonFormField<T>(
          value: value,
          isExpanded: true,
          decoration: InputDecoration(
            enabledBorder: inputBorder,
            border: inputBorder,
            errorBorder: inputBorder,
            focusedBorder: inputBorder,
            disabledBorder: inputBorder,
            focusedErrorBorder: inputBorder,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 16,
            ),
          ),
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
          onChanged: onChanged,
          items: items,
        ),
      ],
    );
  }
}
