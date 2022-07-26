import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yatla/misc/constants.dart';
import 'package:yatla/routes/route_manager.dart';

class BusServiceView extends StatelessWidget {
  const BusServiceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
          color: Colors.indigo.shade50,
          borderRadius: BorderRadius.circular(20)),
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 10.0),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  borderRadius: BorderRadius.circular(90),
                  image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/interstate.jpg")),
                ),
              ),
            ),
            const Text(
              'Interstate Bus Lines',
              style: style16Indigo,
            ),
          ],
        ),
        const SizedBoxH10(),
        TextButton.icon(
          onPressed: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, RouteManager.mapPage);
          },
          icon: const Icon(
            FontAwesomeIcons.chevronRight,
            color: Colors.indigo,
          ),
          label: const Text(
            'View routes',
            style: style14Indigo,
          ),
        )
      ]),
    );
  }
}
