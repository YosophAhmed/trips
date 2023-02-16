import 'package:trips/models/trip_model.dart';

class TripData {
  static List<TripModel> trips = [
    TripModel(
      title: 'Beach Paradise',
      price: '350',
      nights: '3',
      img: 'beach.png',
    ),
    TripModel(
      title: 'City Break',
      price: '400',
      nights: '5',
      img: 'city.png',
    ),
    TripModel(
      title: 'Ski Adventure',
      price: '750',
      nights: '2',
      img: 'ski.png',
    ),
    TripModel(
      title: 'Space Blast',
      price: '600',
      nights: '4',
      img: 'space.png',
    ),
  ];
}
