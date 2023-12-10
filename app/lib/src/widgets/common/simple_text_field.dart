// simple text field with label

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SimpleTextField extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputFormatter? inputFormatter;
  final String? hintText;
  final Color? color;

  /// Campo de texto simples com rótulo.
  ///
  /// Este widget é um campo de texto simples que recebe obrigatoriamente
  /// um [label] e um [controller]. Opcionalmente, pode receber um [obscureText]
  /// para esconder o texto digitado, um [inputFormatter] para formatar a entrada
  /// de texto, um [hintText] para exibir um texto de dica e uma [color] para
  /// definir a cor do texto e das bordas do campo de texto.
  ///
  /// Exemplo de uso:
  /// ```dart
  /// SimpleTextField(
  ///  label: 'IP do servidor de classificação',
  /// controller: ipControler,
  /// hintText: "Exemplo: 192.168.15.2"
  /// )
  /// ```
  const SimpleTextField(
      {Key? key,
      required this.label,
      required this.controller,
      this.obscureText = false,
      this.inputFormatter,
      this.hintText,
      this.color})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _SimpleTextFieldState();
}

class _SimpleTextFieldState extends State<SimpleTextField> {
  late String _label;
  late TextEditingController _controller;
  late bool _obscureText;
  late TextInputFormatter? _inputFormatter;
  late String? _hintText;
  late Color _color;

  @override
  void initState() {
    super.initState();
    _label = widget.label;
    _controller = widget.controller;
    _obscureText = widget.obscureText;
    _inputFormatter = widget.inputFormatter;
    _hintText = widget.hintText;
  }

  @override
  Widget build(BuildContext context) {
    _color = widget.color ?? Theme.of(context).colorScheme.tertiary;

    /// se a cor for nula, usa a cor branca
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: TextField(
        cursorColor: _color,
        style: TextStyle(color: _color),
        obscureText: _obscureText,
        controller: _controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide(color: _color)),
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: _color)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: _color)),
          labelText: _label,
          hintText: _hintText,
          labelStyle: TextStyle(color: _color),
          hintStyle: TextStyle(color: _color),
        ),
        inputFormatters: _inputFormatter != null ? [_inputFormatter!] : null,
      ),
    );
  }
}
