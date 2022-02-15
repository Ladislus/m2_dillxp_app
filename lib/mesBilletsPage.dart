import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_dill/drawer.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'package:test_dill/constants.dart';

class mesBilletsPage extends StatelessWidget{

  List<QrImage> qrcode = <QrImage>[QrImage(data: "1"),QrImage(data: "2"),QrImage(data: "3"),QrImage(data: "4")];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: CustomDrawer(),
      appBar : AppBar(
      actions: [
        Container(
          width: 80,
          margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: SvgPicture.asset(
            'images/logo-cinemas-studio-appbar.svg',
          fit: BoxFit.contain,
          ),
        ),
        Padding(padding: EdgeInsets.fromLTRB(0,0, 20,10))
      ],
      backgroundColor: rouge_appbar,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(

                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text(
                  "Mes Billets".toUpperCase(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: rouge_appbar),
                ),
              ),
            ],
          ),
          /*Container(
              padding: const EdgeInsets.all(10),
              child: Align(
                  alignment: Alignment.topRight,
                  child: FractionallySizedBox(
                    widthFactor: 0.25,
                    child: Divider(
                      color: rouge_appbar,
                      thickness: 10,
                    ),
                  )
              )
          ),*/
          Container(
            padding: EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xFFe20613),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            height: 3,
            width: 65,
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  labelText: "Rechercher mon billet",
                  labelStyle: TextStyle(
                    color: placeholder_color,
                    fontWeight: FontWeight.bold,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: rouge_principal, width: 2.5),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.blue, width: 2.5),
                    borderRadius: BorderRadius.circular(50.0),
                  ),

                ),

              )

          ),
          ListView(
            shrinkWrap: true,
            children : [
              Container(
                child: Column(
                  children: [
                    Text(
                      "Billets actifs",
                      style: TextStyle(
                        color: rouge_appbar,
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                    SizedBox(
                      height: 200,

                      child: ListView.separated(
                          itemBuilder: (BuildContext context, int index){
                            return Container(
                              width: 200,
                              child: Card(
                                color: Colors.white70,

                                child :Column(
                                  children: [
                                    SizedBox(
                                            height: 160,
                                            child: Column(
                                            children: [
                                              Expanded(child: qrcode[index],
                                              ),
                                            ],
                                            ),
                                    ),
                                    const Text(
                                      'Séance : [date][format : dd/mm/yyyy] à [heure]',
                                      style: TextStyle(
                                        fontSize: 12,
                                        //overflow: TextOverflow.fade,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const Text(
                                      "Film : [nom Film]",
                                      style: TextStyle(
                                        fontSize: 12,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) => const Padding(
                              padding: EdgeInsets.only(right: 15)),
                         scrollDirection: Axis.horizontal ,
                          itemCount: qrcode.length),
                    ),
                    Container(
                      padding: EdgeInsets.all(100),
                      decoration: const BoxDecoration(
                        color: Color(0xFFe20613),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      height: 3,
                      width: 65,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      "Anciens billets",
                      style: TextStyle(
                        color: rouge_appbar,
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.separated(
                        itemBuilder: (BuildContext context, int index){
                        return Container(
                          width: 200,
                          child: Card(
                            color: Colors.white70,
                            child :Column(
                              children: [
                                SizedBox(
                                  height: 160,
                                  child: Column(
                                    children: [
                                      Expanded(child: qrcode[index],
                                      ),
                                    ],
                                  ),
                                ),
                                const Text(
                                  'Séance : [date][format : dd/mm/yyyy] à [heure]',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const Text(
                                  "Film : [nom Film]",
                                  style: TextStyle(
                                    fontSize: 12,
                                      overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                        },
                      separatorBuilder: (BuildContext context, int index) => const Padding(
                        padding: EdgeInsets.only(right: 15)),
                      scrollDirection: Axis.horizontal ,
                      itemCount: qrcode.length
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }


}