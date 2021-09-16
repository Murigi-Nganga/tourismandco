import 'package:flutter/material.dart';
import 'package:tourismandco/models/location.dart';
import 'text_section.dart';
import 'image_banner.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;

  const LocationDetail(this._locationID);

  @override
  Widget build(BuildContext context) {
    //Fetch a specific location by id
    final location = Location.fetchByID(_locationID);

    return Scaffold(
      appBar: AppBar(
        title: Text(location!.name),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(location.imagePath),
            //...textSections(location)                    
            //!Cascade Operator
          ]..addAll(textSections(location)),                        //*Appends all object to the end of the list
          //!Spread operator
          ),
    );
  }

  List<Widget> textSections(Location location) {            //*TextSection Widgets
    return location.facts.map((fact) => TextSection(fact.title, fact.text)).toList();
  }
}
