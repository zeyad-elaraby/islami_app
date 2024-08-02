import 'package:flutter/material.dart';
import 'package:islami_app/provider/my_provider.dart';
import 'package:provider/provider.dart';

import '../my_theme_data.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Container(
      // height: MediaQuery.of(context).size.height * 0.6,
      child: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                pro.changeTheme(ThemeMode.light);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Light",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: primaryColor),
                  ),
                  Icon(
                    Icons.done,
                    size: 30,
                    color: primaryColor,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () {
                pro.changeTheme(ThemeMode.dark);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Dark",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  // Icon(Icons.done),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
