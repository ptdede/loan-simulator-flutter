import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LcTextField extends HookWidget {
  const LcTextField({
    super.key,
    this.placeholder,
    this.label,
    this.leading,
    this.trailing,
    this.inputType,
    this.controller,
    this.validator,
    this.onChanged,
    this.inputFormatters,
    this.autocorrect = true,
    this.enableSuggestions = true,
    this.obscureText = false,
  });

  const LcTextField.password({
    super.key,
    this.label,
    this.placeholder,
    this.leading,
    this.trailing,
    this.inputType,
    this.controller,
    this.validator,
    this.onChanged,
    this.inputFormatters,
    this.autocorrect = false,
    this.enableSuggestions = false,
    this.obscureText = true,
  });

  const LcTextField.number({
    super.key,
    this.label,
    this.placeholder,
    this.leading,
    this.trailing,
    this.inputType,
    this.controller,
    this.validator,
    this.onChanged,
    this.inputFormatters,
    this.autocorrect = false,
    this.enableSuggestions = false,
    this.obscureText = false,
  });

  final String? label;
  final String? placeholder;
  final Widget? leading;
  final Widget? trailing;
  final TextInputType? inputType;
  final TextEditingController? controller;
  final bool autocorrect;
  final bool enableSuggestions;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final List<TextInputFormatter>? inputFormatters;

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
        Material(
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  validator: validator,
                  inputFormatters: inputFormatters,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    prefixIcon: leading,
                    suffixIcon: trailing,
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                    fillColor: Colors.black38,
                    hintText: placeholder,
                  ),
                  keyboardType: inputType,
                  controller: controller,
                  autocorrect: autocorrect,
                  enableSuggestions: enableSuggestions,
                  obscureText: obscureText,
                  onChanged: onChanged,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
