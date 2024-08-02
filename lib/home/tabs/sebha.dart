import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../provider/my_provider.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  int index = 0;
  List<String> azkarName = [
    "سبحان الله ",
    "الحمدلله",
    "لا اله الا الله",
    "الله اكبر"
  ];
  double angle = 0;
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset(
              'assets/images/head_sebha_logo.png',
              height: 105,
            ),
            Padding(
              padding: EdgeInsets.only(top: 75),
              child: Transform.rotate(
                angle: angle,
                child: GestureDetector(
                  child: Image.asset(
                    'assets/images/body_sebha_logo.png',
                  ),
                  onTap: () {
                    zekrIncrement();
                  },
                ),
              ),
            ),
          ],
        ),
        Text(
          "Number of Tasbeehs",
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.w600),
        ),
        Center(
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: provider.mode == ThemeMode.light
                  ? Color(0x91B7935F)
                  : Color(0x91141A2E),
            ),
            child: Text(
              '$counter',
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Center(
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: provider.mode == ThemeMode.light
                    ? Color(0xFFB7935F)
                    : Color(0xFFFACC1D)),
            child: Text('${azkarName[index]}',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(fontWeight: FontWeight.w400)),
          ),
        ),
      ],
    );
  }

  zekrIncrement() {
    setState(() {
      counter++;
      if (counter % 33 == 0) {
        index++;
        counter = 0;
      }
      if (index == azkarName.length) {
        index = 0;
      }

      angle += 360 / 4;
      setState(() {});
    });
  }
}
