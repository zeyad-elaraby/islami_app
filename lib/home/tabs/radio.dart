import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/provider/my_provider.dart';
import 'package:provider/provider.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Image.asset(
            "assets/images/radio_image.png",
            width: 412,
            height: 222,
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "إذاعة القرآن الكريم",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                iconSize: 50,
                onPressed: () {},
                icon: Icon(
                  Icons.skip_previous,
                  color: provider.mode == ThemeMode.light
                      ? Color(0xFFB7935F)
                      : Color(0xFFFACC1D),
                ),
              ),
              IconButton(
                  iconSize: 100,
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_arrow_rounded,
                    color: provider.mode == ThemeMode.light
                        ? Color(0xFFB7935F)
                        : Color(0xFFFACC1D),
                  )),
              IconButton(
                iconSize: 50,
                onPressed: () {},
                icon: Icon(
                  Icons.skip_next,
                  color: provider.mode == ThemeMode.light
                      ? Color(0xFFB7935F)
                      : Color(0xFFFACC1D),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
