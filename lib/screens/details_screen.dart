import 'package:flutter/material.dart';
import 'package:trips/models/trip_model.dart';

class DetailsScreen extends StatefulWidget {
  static const String routeName = 'DetailsScreen';


  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final TripModel tripModel = ModalRoute.of(context)!.settings.arguments as TripModel;

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
