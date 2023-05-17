import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveTextButton extends StatelessWidget {
  final String text;
  final VoidCallback handler;

  const AdaptiveTextButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: handler,
            child: Text(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                text),
          )
        : TextButton(
            onPressed: handler,
            child: Text(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                text),
          );
  }
}
