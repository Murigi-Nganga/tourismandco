import 'package:flutter/material.dart';
import 'package:tourismandco/models/location.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class Locations extends StatelessWidget {
  const Locations({Key? key}) : super(key: key);

  //Function is used to navigate to the new screen
  void _onLocationTap(BuildContext context, int locationID) {
    Navigator.pushNamed(context, LocationDetailRoute, arguments: {"id": locationID});
  }

  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Locations'),
        ),
      ),
      body: ListView(
        children: locations
            .map((location) => InkWell(                                       //?A GestureDetector could be used as well
              borderRadius: BorderRadius.circular(40.0),
              splashColor: Colors.amber,
              highlightColor: Colors.greenAccent,
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Text(location.name)
              ), 
              onTap: () => _onLocationTap(context, location.id),
            ))
            .toList(),
      ),
    );
  }
}
