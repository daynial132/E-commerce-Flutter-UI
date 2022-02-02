import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/routes.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/theme.dart';
import 'package:shop_app/theme/thememodel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        // future: _initialization,
        builder: (context, snapshot) {
      // Check for Errors
      if (snapshot.hasError) {
        print("Something Went Wrong");
      }
      if (snapshot.connectionState == ConnectionState.waiting) {
        return Center(child: CircularProgressIndicator());
      }
      return ChangeNotifierProvider(
        create: (_) => ThemeModel(),
        child: Consumer(builder: (context, ThemeModel themeNotifier, child) {
          return MaterialApp(
            themeMode: ThemeMode.system,
            // theme: MyThemes.lightTheme,
            theme:
                themeNotifier.isDark ? MyThemes.darkTheme : MyThemes.lightTheme,
            // darkTheme: MyThemes.darkTheme,
            debugShowCheckedModeBanner: false,

            title: 'My Shop App',
            //   theme: theme(),
            home: SplashScreen(),
            // We use routeName so that we dont need to remember the name
            initialRoute: SplashScreen.routeName,
            routes: routes,
          );
        }),
      );
    });
  }
}
