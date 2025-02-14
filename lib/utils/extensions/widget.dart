import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  centerHorizontally() => Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [this],
      );
  center([bool center = true]) => center
      ? Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [this],
          ),
        )
      : this;
}
