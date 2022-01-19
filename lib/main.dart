import 'package:flutter/material.dart';
import 'models/models.dart';
import 'package:provider/provider.dart';
import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  runApp(Fooderlich());
}

class Fooderlich extends StatelessWidget {
  Fooderlich({Key? key}) : super(key: key);

  final theme = FooderlichTheme.light();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => TabManager()),
          ChangeNotifierProvider(create: (context) => GroceryManager())
        ],
        child: const Home(),
      ),
    );
  }
}
