import 'package:flutter/material.dart';

import '../models/trip_model.dart';

class TripItem extends StatelessWidget {
  final TripModel tripModel;

  const TripItem({
    Key? key,
    required this.tripModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(
          8.0,
        ),
        child: Image.asset(
          'assets/images/${tripModel.img}',
          height: 50,
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${tripModel.nights} nights',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.blue[300],
            ),
          ),
          Text(
            tripModel.title,
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
      trailing: Text(
        '${tripModel.price}\$',
      ),
    );
  }
}