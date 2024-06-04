import 'package:fixit/components/constants.dart';
import 'package:fixit/components/custom_dropdown%20city.dart';
import 'package:fixit/components/custom_dropdown%20govern.dart';
import 'package:fixit/src/data/app_navigation.dart';
import 'package:fixit/src/data/app_size.dart';
import 'package:flutter/material.dart';

import 'custom_dropdown.dart';

class SearchDialog extends StatelessWidget {
  const SearchDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: PhoneSize.phonewidth(context) * 0.02,
            vertical: PhoneSize.phoneHeight(context) * 0.15),
        decoration: BoxDecoration(
            border: Border.all(
                color: kPrimaryColor,
                width: 2.5,
                style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(12),
            color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const CustomDropDown(
              hint: "CHOOSE THE PROBLEM",
            ),
            const CustomDropDownCity(
              hint: "IN THIS CITY",
            ),
            const CustomDropDownGovern(
              hint: "IN THIS AREA",
            ),
            GestureDetector(
              onTap: () => AppNavigation.pop(context),
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "S E A R C H",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
