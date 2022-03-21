import 'package:flutter/material.dart';
import 'package:flutter_blueprint/generated/l10n.dart';

class NewsErrorState extends StatelessWidget {
  const NewsErrorState({
    Key? key,
    required this.errorMessage,
  }) : super(key: key);
  final String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Text(errorMessage ?? S.of(context).informationNewsError);
  }
}