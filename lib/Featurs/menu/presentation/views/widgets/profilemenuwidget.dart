import 'package:deyarakapp/Featurs/profile/data/models/profile/profile.dart';
import 'package:deyarakapp/core/utils/fonts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class profilemenuwidget extends StatefulWidget {
  final List<Profile> userobj;

  profilemenuwidget({
    super.key,
    required this.userobj,
  });

  @override
  State<profilemenuwidget> createState() => _profilemenuwidgetState();
}

class _profilemenuwidgetState extends State<profilemenuwidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * .06,
          left: 16,
          right: 16,
          top: 25),
      child: Column(children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(45),
              child: Image.network(
                widget.userobj[0].photo!.url.toString(),
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                widget.userobj[0].name.toString(),
                style: Fonts.textstyle24,
              ),
              Text(
                'Show Profile',
                style: Fonts.textstyle14.copyWith(color: Color(0xff898989)),
              ),
            ]),
            const Spacer(),
            const Icon(
              Icons.keyboard_arrow_right_outlined,
              size: 32,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            decoration: const BoxDecoration(
                border: Border(
              bottom: BorderSide(color: Colors.black),
            )),
          ),
        ),
      ]),
    );
  }
}
