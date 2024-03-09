
import 'package:app/model/Item/item_manager.dart';
import 'package:app/screens/details.dart';
import 'package:app/prefs/loginPreference.dart';
import 'package:app/screens/first-page.dart';
import 'package:app/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ItemManager items = ItemManager();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 0, 93, 169)),
      home: DetailsPage(item: items.featuredItems[0],),
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => defaultt(),
        )
      ],
      child: Consumer<defaultt>(
        builder: (context, value, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: (value.islogin && value.isUser) ? first() : welcome(),
          );
        },
      ),
    );
  }
}
