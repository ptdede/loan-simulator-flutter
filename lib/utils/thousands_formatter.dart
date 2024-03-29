import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

final NumberFormat _formatter = NumberFormat('#,###');

class ThousandsFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final formattedValue = thousandFormater(newValue.text);

    final selectionOffset = newValue.selection.baseOffset +
        (formattedValue.length - newValue.text.length);

    return TextEditingValue(
      text: formattedValue,
      selection: TextSelection.collapsed(offset: selectionOffset.toInt()),
    );
  }
}

String thousandFormater(String value) {
  final split = value.split(',');

  final thousand = _formatter.format(double.tryParse(split.first) ?? 0);

  return '$thousand${split.elementAtOrNull(1) ?? ''}';
}
