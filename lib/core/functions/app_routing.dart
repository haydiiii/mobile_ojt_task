import 'package:flutter/material.dart';

pushto(BuildContext context, newView) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => newView));
}

pushWithReplacement( BuildContext context, newView) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => newView));
}

pushAndremoveUntill(BuildContext context, newView) {
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => newView), (route) => false);
}

pop(BuildContext context) {
  Navigator.of(context).pop();
}
