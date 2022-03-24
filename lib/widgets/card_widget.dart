import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/item.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  final item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: Row(
          children: [
            Expanded(child: Text(item.name)),
            Expanded(
              child: Text(
                item.quantity.toString(),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                '${item.price}',
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ),
    );
  }
}