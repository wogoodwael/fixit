import 'package:fixit/models/citiesModel.dart';
import 'package:flutter/material.dart';
import 'package:fixit/components/constants.dart';
import 'package:fixit/models/categories_model.dart'; // Import your categories model
import 'package:fixit/src/data/api.dart'; // Import your API function to fetch categories

class CustomDropDownCity extends StatelessWidget {
  const CustomDropDownCity({Key? key, required this.hint}) : super(key: key);
  final String hint;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CitiesModel>>(
      future: getCities(), // Fetch cities from API
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // While data is loading
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          // If there's an error
          return Text('Error loading cities');
        } else {
          // If data loaded successfully
          List<CitiesModel> cities = snapshot.data!;
          return DropdownMenu(
            trailingIcon: Icon(Icons.arrow_drop_down_sharp),
            inputDecorationTheme: InputDecorationTheme(
              hintStyle: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
              contentPadding: EdgeInsets.all(20),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(
                  color: kPrimaryColor,
                ),
              ),
            ),
            width: MediaQuery.of(context).size.width * 0.9,
            onSelected: (value) {},
            dropdownMenuEntries: [
              for (var city in cities)
                DropdownMenuEntry(
                  value: city.id,
                  label: city.name,
                  labelWidget: Text(city.name),
                ),
            ],
            hintText: hint,
          );
        }
      },
    );
  }
}
