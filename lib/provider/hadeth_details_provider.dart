import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../home/hadeth_model.dart';

class HadethDetailsProvider extends ChangeNotifier {
  List<HadethModel> allAhadeth = [];
  List<String> content = [];
  List<String> hadethLines = [];

  loadHadeth() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
      List<String> ahadeth = value.split("#");

      for (int i = 0; i < ahadeth.length; i++) {
        String hadetOne = ahadeth[i];
        hadethLines = hadetOne.trim().split("\n");
        String title = hadethLines[0];
        hadethLines.removeAt(0);
        content = hadethLines;
        HadethModel hadethModel = HadethModel(title, content);
        allAhadeth.add(hadethModel);
        notifyListeners();
      }
    });
  }
}
