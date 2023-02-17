import 'package:flutter/material.dart';
import 'package:trips/data/trip_data.dart';
import 'package:trips/widgets/trip_item.dart';

class TripsListView extends StatelessWidget {
  const TripsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: TripData.trips.length,
        itemBuilder: (context, index) => TripItem(
          tripModel: TripData.trips[index],
        ),
      ),
    );
  }
}
