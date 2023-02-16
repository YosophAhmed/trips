import 'package:flutter/material.dart';
import 'package:trips/models/trip_model.dart';
import 'package:trips/widgets/heart_icon.dart';

class IconListTile extends StatelessWidget {
  final TripModel tripModel;

  const IconListTile({
    Key? key,
    required this.tripModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tripModel.title,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey[800]),
      ),
      subtitle: Text(
        '${tripModel.nights} night stay for only ${tripModel.price}\$',
        style: const TextStyle(
          letterSpacing: 1,
        ),
      ),
      trailing: const Heart(),
    );
  }
}
