import 'package:flutter/material.dart';
import '../models/models.dart';

class GroceryTile extends StatelessWidget {
  final GroceryItem item;
  final Function(bool)? onComplete;
  final TextDecoration textDecoration;
  GroceryTile({
    Key? key,
    required this.item,
    this.onComplete,
  })  : textDecoration =
            item.isComplete ? TextDecoration.lineThrough : TextDecoration.none,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
