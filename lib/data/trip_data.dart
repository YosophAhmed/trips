import 'package:trips/models/trip_model.dart';

class TripData {
  static List<TripModel> trips = [
    TripModel(
      title: 'Beach Paradise',
      price: '350',
      nights: '3',
      img: 'beach.png',
      description: 'A warm and muggy day was the perfect weather combination to go to the beach. The water of the sea was crystal clear and deep blue in colour. There was not a bit of sea weed in our sight. As one listens to the sound of the waves roaring and the breezy wind of the sea brushing by, you can spot boats sailing in the deep seas. I looked at the people around who were soaking themselves in the sun and were in line to get in the water.',
    ),
    TripModel(
      title: 'City Break',
      price: '400',
      nights: '5',
      img: 'city.png',
      description: 'Some of the most beautiful places to visit in my city are Cubbon Park, Brigade Road, Nandi Hills, Lal Bagh, etc. There are various facilities available in my city, such as healthcare, fitness, food and beauty services, and civic amenities.',
    ),
    TripModel(
      title: 'Ski Adventure',
      price: '750',
      nights: '2',
      img: 'ski.png',
      description: 'Sweden is a truly beautiful country that most people do not get to witness. If you talk with someone who has visited Sweden, they will tell you firsthand how beautiful it is',
    ),
    TripModel(
      title: 'Space Blast',
      price: '600',
      nights: '4',
      img: 'space.png',
      description: 'Space travel has immensely enriched our knowledge of the solar system. It has afforded us a new scientific understanding of our own planet, the earth, through photographs taken by the astronauts.',
    ),
  ];
}
