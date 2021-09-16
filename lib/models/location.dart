import 'location_fact.dart';

class Location {
  final int id;
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static Location? fetchByID(int locationID) {
    //Fetch all locations, iterate them and when we find the location with the id
    //we want then we will return it immediately
    List <Location> locations = Location.fetchAll();

    for (var i = 0; i < locations.length; i++) {
      if(locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }

  static List<Location> fetchAll() {
    return [
      Location(1,'Mountains', 'assets/images/mountains.jpg', [
        LocationFact('Summary',
            'While this is some text that can be used as a summary of the location detail we want to use'),
        LocationFact('How To Get There',
            'This is how to get to the destination that we are using to test our mobile application'),
      ]),
      Location(2,'Room', 'assets/images/room.jpg', [
        LocationFact('Summary',
            'While this is some text that can be used as a summary of the location detail we want to use'),
        LocationFact('How To Get There',
            'This is how to get to the destination that we are using to test our mobile application'),
      ]),
      Location(3,'Trees', 'assets/images/trees.jpg', [
        LocationFact('Summary',
            'While this is some text that can be used as a summary of the location detail we want to use'),
        LocationFact('How To Get There',
            'This is how to get to the destination that we are using to test our mobile application'),
      ]),
      Location(4,'Water', 'assets/images/water.jpg', [
        LocationFact('Summary',
            'While this is some text that can be used as a summary of the location detail we want to use'),
        LocationFact('How To Get There',
            'This is how to get to the destination that we are using to test our mobile application'),
      ]),
    ];
  }
}
