import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/add_place_screen.dart';
import 'package:flutter_complete_guide/screens/places_list_screen.dart';
import 'package:provider/provider.dart';
import '../providers/great_places.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
        ),
        home: PlacesListScreeen(),
        routes: {
          AddPlaceScreen.routeName:(ctx)=>AddPlaceScreen(),
        },
      ),
    );
  }
}
