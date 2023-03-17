import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/playprovider.dart';

class tabbarscreen extends StatefulWidget {
  const tabbarscreen({Key? key}) : super(key: key);

  @override
  State<tabbarscreen> createState() => _tabbarscreenState();
}

class _tabbarscreenState extends State<tabbarscreen> {
  storeprovider? Storeproviderfalse;
  storeprovider? Storeprovider;

  @override
  Widget build(BuildContext context) {
    Storeproviderfalse = Provider.of<storeprovider>(context, listen: false);
    Storeprovider = Provider.of<storeprovider>(context, listen: true);
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(

            backgroundColor: Colors.black,
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              padding: EdgeInsets.all(10),
              // indicator: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.black),
              onTap: (value) {
                Storeproviderfalse!.addScreen(value);
              },
              tabs: [
                Tab(
                  text: "For You",
                ),
                Tab(
                  text: "Top-chat",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Top-rated games",
                                style: TextStyle(fontSize: 22)),
                            Expanded(child: SizedBox()),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                      ),
                      Container(
                        height: 210,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(
                              decelerationRate: ScrollDecelerationRate.normal),
                          padding: EdgeInsets.all(5),
                          shrinkWrap: true,
                          itemCount: Storeprovider!.sname.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: apppps(index),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Suggested for you",
                                style: TextStyle(fontSize: 22)),
                            Expanded(child: SizedBox()),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                      ),
                      Container(
                        height: 200,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(
                              decelerationRate: ScrollDecelerationRate.normal),
                          padding: EdgeInsets.all(5),
                          shrinkWrap: true,
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return apps(index);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Stylized games",
                                style: TextStyle(fontSize: 22)),
                            Expanded(child: SizedBox()),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                      ),
                      Container(
                        height: 210,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(
                              decelerationRate: ScrollDecelerationRate.normal),
                          padding: EdgeInsets.all(5),
                          shrinkWrap: true,
                          itemCount: Storeprovider!.sname.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: apppps(index),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: Storeproviderfalse!.MainImage.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Action . Runner . arcade"),
                            Row(
                              children: [
                                Text("4.4",style: TextStyle(fontSize: 12)),
                                Icon(Icons.star,size: 12,)
                              ],
                            ),
                          ],
                        ),
                        title: Text("${Storeproviderfalse!.MainName[index]}"),
                        leading: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("${index+1}"),
                            SizedBox(width: 10,),
                            ClipRRect(borderRadius: BorderRadius.all(Radius.circular(10)),child: Image.asset("${Storeproviderfalse!.MainImage[index]}",fit: BoxFit.cover,height: 70,width: 70,))
                          ],
                        ),
                      )
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget apps(int index) {
    return Container(
      width: 150,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            child: Image.asset(
              "${Storeprovider!.img[index]}",
              height: 100,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text("${Storeprovider!.name[index]}"),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${Storeprovider!.rating[index]}",
                  style: TextStyle(fontSize: 15)),
              Icon(Icons.star_border, size: 17),
            ],
          ),
        ],
      ),
    );
  }

  Widget apppps(int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            color: Colors.black,
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.asset(
                "${Storeprovider!.images[index]}",
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.asset("${Storeprovider!.simages[index]}",
                  fit: BoxFit.cover, height: 70, width: 70),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${Storeprovider!.sname[index]}",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                Row(
                  children: [
                    Text(
                      "Action",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                    ),
                    Text("."),
                    Text("Runner",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300)),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "4.4",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                    ),
                    Icon(Icons.star, size: 12),
                    SizedBox(
                      width: 5,
                    ),
                    Text("116 MB",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500)),
                  ],
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
