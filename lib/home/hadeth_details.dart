import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/provider/hadeth_details_provider.dart';
import 'package:islami_app/provider/my_provider.dart';
import 'package:provider/provider.dart';
import 'hadeth_model.dart';

class HadethDetails extends StatelessWidget {
  static const routeName = "HadethDetails";
  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    var model = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return ChangeNotifierProvider(
        create: (context) => HadethDetailsProvider()..loadHadeth(),
        builder: (context, child) {
          var p1 = Provider.of<HadethDetailsProvider>(context);
          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(provider.mode == ThemeMode.light
                        ? "assets/images/default_bg.png"
                        : "assets/images/main_dark_bg.png"),
                    fit: BoxFit.fill)),
            child: Scaffold(
              appBar: AppBar(
                title: Text(
                  "إسلامي",
                ),
              ),
              body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 29),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              model.title,
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
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
                              return Text(
                                model.content[index],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(fontWeight: FontWeight.w400),
                                textDirection: TextDirection.rtl,
                              );
                            },
                            itemCount: model.content.length,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
