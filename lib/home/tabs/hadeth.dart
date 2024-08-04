import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/provider/hadeth_details_provider.dart';
import 'package:provider/provider.dart';

import '../hadeth_details.dart';
import '../hadeth_model.dart';

class HadethTab extends StatelessWidget {
  HadethTab({super.key});
  String hadeth_number = "hadeth_number".tr();
  @override
  Widget build(BuildContext context) {
    String hadeth_number = "hadeth_number".tr();
    return ChangeNotifierProvider(
        create: (context) => HadethDetailsProvider()..loadHadeth(),
        builder: (context, child) {
          var p = Provider.of<HadethDetailsProvider>(context);
          return Center(
            child: Column(
              children: [
                Image.asset("assets/images/hadeth_logo.png"),
                Divider(
                  color: Color(0xFFB7935F),
                  thickness: 3,
                ),
                Text("ahadeth".tr(),
                    style: Theme.of(context).textTheme.titleMedium),
                Divider(
                  color: Color(0xFFB7935F),
                  thickness: 3,
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, HadethDetails.routeName,
                                arguments: p.allAhadeth[index]);
                          },
                          child: Text("${hadeth_number}${index + 1}",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(fontWeight: FontWeight.w400)),
                        ),
                      );
                    },
                    itemCount: Provider.of<HadethDetailsProvider>(context)
                        .allAhadeth
                        .length,
                  ),
                )
              ],
            ),
          );
        });
  }
}
