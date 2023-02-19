import 'package:flutter/material.dart';
import 'package:trips/data/trip_data.dart';
import 'package:trips/widgets/trip_item.dart';

class TripsListView extends StatelessWidget {
  const TripsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
    Tween<Offset> offset = Tween(
      begin: const Offset(1, 0),
      end: const Offset(0, 0),
    );
    return Expanded(
      child: AnimatedList(
        key: listKey,
        physics: const BouncingScrollPhysics(),
        initialItemCount: TripData.trips.length,
        itemBuilder: (context, index, animation) => SlideTransition(
          position: animation.drive(offset),
          child: TripItem(
            tripModel: TripData.trips[index],
          ),
        ),
      ),
    );
  }
}
