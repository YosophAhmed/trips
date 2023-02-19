import 'package:flutter/material.dart';
import 'package:trips/models/trip_model.dart';
import 'package:trips/widgets/icon_list_tile.dart';

class DetailsScreen extends StatelessWidget {
  static const String routeName = 'DetailsScreen';

  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TripModel tripModel =
        ModalRoute.of(context)!.settings.arguments as TripModel;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 450,
                child: Hero(
                  tag: 'location-img-${tripModel.img}',
                  child: Image.asset(
                    'assets/images/${tripModel.img}',
                    fit: BoxFit.fill,
                    width: double.infinity,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26.0),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          IconListTile(
            tripModel: tripModel,
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
            ),
            child: Text(
              tripModel.description,
              style: TextStyle(
                color: Colors.grey[600],
                height: 1.4,
              ),
              textAlign: TextAlign.start,
            ),
          )
        ],
      ),
    );
  }
}
