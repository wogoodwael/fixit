import 'package:flutter/material.dart';
import 'package:fixit/components/constants.dart';
import 'package:fixit/models/categories_model.dart'; // Import your categories model
import 'package:fixit/src/data/api.dart'; // Import your API function to fetch categories

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({Key? key, required this.hint}) : super(key: key);
  final String hint;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ServiceCategoriesModel>>(
      future: getCategories(), // Fetch categories from API
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // While data is loading
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          // If there's an error
          return Text('Error loading categories');
        } else {
          // If data loaded successfully
          List<ServiceCategoriesModel> categories = snapshot.data!;
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
              for (var category in categories)
                DropdownMenuEntry(
                  value: category.id, // Assuming each category has an id
                  label: category.title!, // Assuming each category has a name
                  labelWidget: Text(
                    category.title!, // Assuming each category has a name
                  ),
                ),
            ],
            hintText: hint,
          );
        }
      },
    );
  }
}
