import 'package:flutter/material.dart';
import 'package:tourismandco/screens/location_detail/location_detail.dart';
import 'package:tourismandco/screens/locations/locations.dart';
import 'screens/locations/locations.dart';
import 'style.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tourism Starter App',
      debugShowCheckedModeBanner: false,
      theme: _theme(),
      home: Locations(),
      onGenerateRoute: _routes(),
    );
  }

  ThemeData _theme() {
    return ThemeData(
        appBarTheme: AppBarTheme(
          toolbarTextStyle: TextTheme( 
            headline6: AppBarTextStyle,
          ).bodyText2, titleTextStyle: TextTheme(
            headline6: AppBarTextStyle, 
          ).headline6,
        ),
        textTheme: TextTheme(
          headline6: TitleTextStyle,
          bodyText2: BodyTextStyle,
        ));
  }

  RouteFactory _routes() {
    //Returns Route<dynamic>
    return (settings) {
      final Map<String, dynamic> arguments =
      settings.arguments as Map<String, dynamic>;
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
