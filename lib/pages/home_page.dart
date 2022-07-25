// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:yatla/pages/bus_service_view.dart';
import '../misc/constants.dart';
import '../widgets/navigation_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.indigo
        ),
        centerTitle: true,
        title: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.shade50,
          ),
          child: InkWell(
            onTap: () {
              //search for a new location
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(
                  Icons.near_me,
                  color: Colors.indigo,
                ),
                Text(
                  "12 President Hof, Oranjesig",
                  style: style16Indigo,
                ),
                Icon(
                  Icons.arrow_drop_down_outlined,
                  color: Colors.indigo,
                )
              ],
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.dark_mode,
              color: Colors.indigo,
            ),
          )
        ],
      ),

      body: SafeArea(
          child: ListView(
        children: [
          //greeting
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Discover", style: titleStyle),
                  ],
                ),
              ],
            ),
          ),
          //track a bus header
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                //search bar
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.indigo.shade50,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.search,
                        color: Colors.indigoAccent,
                      ),
                      Text(
                        'Search',
                        style: style16Indigo,
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                const SizedBoxH20(),
                //title one
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Available Bus Services",
                          style: titleStyle,
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBoxH10(),
                //bus companies view
                SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: const [BusServiceView(), BusServiceView(), BusServiceView(), BusServiceView()],
                    )),
              ],
            ),
          )
        ],
      )),

      // bottomSheet: DraggableScrollableSheet(
      //               initialChildSize: 0.2,
      //               minChildSize: 0.1,
      //               maxChildSize: 0.4,
      //               builder: (BuildContext context,
      //                   ScrollController scrollController) {
      //                 return SingleChildScrollView(
      //                   controller: scrollController,
      //                   child: Container(
      //                     color: Colors.indigo,
      //                     child: ListView.builder(
      //                       controller: scrollController,
      //                       itemBuilder: (BuildContext context, int index){
      //                       return ListTile(title: Text('Item $index'));
      //                     }))
                            
      //                 );
      //               }),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(FontAwesomeIcons.house,
      //       color: Colors.deepPurple,),
      //       label: "home"),
      //     BottomNavigationBarItem(
      //       icon: Icon(FontAwesomeIcons.magnifyingGlass,
      //       color: Colors.deepPurple,),
      //       label: "search"),
      //     BottomNavigationBarItem(
      //       icon: Icon(FontAwesomeIcons.receipt,
      //       color: Colors.deepPurple,),
      //       label: "history"),
      //     BottomNavigationBarItem(
      //       icon: Icon(FontAwesomeIcons.user,
      //       color: Colors.deepPurple,),
      //       label: "profile")
      //   ]),
    );
  }
}
