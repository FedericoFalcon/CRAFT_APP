import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/contact_provider.dart';
import 'package:craft_app/themes/app_theme.dart';
import 'package:craft_app/providers/theme_mode.dart';
import 'screens/screens.dart'; // Barrel

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ContactProvider()),
        ChangeNotifierProvider(create: (context) => ThemeModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: Provider.of<ThemeModel>(context).themeMode,
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomeScreen(),
        'listview': (context) => const ListViewScreen(),
      },
    );
  }
}
