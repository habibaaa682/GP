import 'package:deyarakapp/Featurs/Home/data/Models/amentiesController.dart';
import 'package:deyarakapp/Featurs/Home/data/Models/property_modell/property_modell.dart';
import 'package:deyarakapp/Featurs/Home/presentation/views/widgets/property_detailes_widgets/amenties_row.dart';

import 'package:flutter/material.dart';

class Amenties extends StatelessWidget {
  const Amenties({super.key, required this.propertyModel});
  final PropertyModell propertyModel;
  final List<String> amentiesnames = const [
    'Wifi',
    'Pool',
    'Gym',
    'Kitchen',
    'Iron',
    'Parking',
    'Air Conditioner',
    'Power Packup',
    'Security',
    'TV',
    'Smoke Alarm',
    'Washer',
    'Heating'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Amenties',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            padding: EdgeInsets.only(top: 10),
            shrinkWrap: true,
            itemCount: propertyModel.data!.amenities!.length,
            itemBuilder: (context, index) {
              return AmentiesRow(
                  label: propertyModel.data!.amenities![index].toString(),
                  icon: AmentiesController.amentiesIcon(
                      amentyname:
                          propertyModel.data!.amenities![index].toString()));
            },
          ),
        )
      ],
    );
  }
}
