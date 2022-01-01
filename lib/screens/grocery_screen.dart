import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'empty_grocery_screen.dart';
import 'package:fooderlich/models/models.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: buildGroceryScreen(),
    );
  }

  Widget buildGroceryScreen() {
    return Consumer<GroceryManager>(builder: (context, manager, child) {
      if (manager.groceryItems.isNotEmpty) {
        return Container();
      } else {
        return const EmptyGroceryScreen();
      }
    });
  }
}
