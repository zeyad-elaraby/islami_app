import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/home/sura_model.dart';
import 'package:islami_app/provider/my_provider.dart';
import 'package:provider/provider.dart';

import '../provider/sura_details_provider.dart';

class SuraDetails extends StatelessWidget {
  static const String routeName = "SuraDetails";
  const SuraDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    // var provider1 = Provider.of<SuraDetailsProvider>(context);
    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;
    // if (provider1.verses.isEmpty) {
    //   provider1.loadSuraFile(model.index);
    // }

    return ChangeNotifierProvider(
      create: (context) => SuraDetailsProvider()..loadSuraFile(model.index),
      builder: (context, child) => Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(provider.mode == ThemeMode.light
                    ? "assets/images/default_bg.png"
                    : "assets/images/main_dark_bg.png"),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "islami".tr(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          body: Card(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(model.suraName,
                          style: Theme.of(context).textTheme.headlineLarge),
                      SizedBox(
                        width: 34,
                      ),
                      Image(
                          image: AssetImage(provider.mode == ThemeMode.light
                              ? "assets/images/light_play_icon.png"
                              : "assets/images/dark_play_icon.png"))
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    endIndent: 24.5,
                    indent: 24.5,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Center(
                          child: Text(
                            // textDirection: TextDirection.rtl,
                            " ${Provider.of<SuraDetailsProvider>(context).verses[index]}  (${index + 1})",
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(fontWeight: FontWeight.w400),
                          ),
                        );
                      },
                      itemCount: Provider.of<SuraDetailsProvider>(context)
                          .verses
                          .length,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
