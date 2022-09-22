import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pharma_linx/screens/qr_scanner_screen.dart';

import '/colors.dart' as color;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const routeName = '/my_home_screen';

  List info = [];

  fetchData() async {
    await DefaultAssetBundle.of(context)
        .loadString("json/info.json")
        .then((value) {
      info = json.decode(value);
    });
    setState(() {});
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;

    appBar() {
      return AppBar(
        title: Text(
          'Pharma Linx',
          style: TextStyle(color: color.AppColor.pageBackground),
        ),
        backgroundColor: color.AppColor.gradientFirst,
      );
    }

    return Scaffold(
      appBar: appBar(),
      body: Container(
        width: _width,
        height: _height - appBar().preferredSize.height,
        color: color.AppColor.pageBackground,
        child: Column(children: [
          Container(
            width: _width,
            height: _width,
            padding: const EdgeInsets.all(10),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: info.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width - 10,
                    // height: 70,
                    margin: const EdgeInsets.only(
                        left: 5, bottom: 5, top: 5, right: 5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                color.AppColor.gradientSecond,
                                color.AppColor.gradientFirst
                              ]),
                        ),
                        child: GridTile(
                          footer: GridTileBar(
                              backgroundColor: color.AppColor.pageIconFirstColor
                                  .withOpacity(0.6),
                              title: Text(
                                info[index]['title'],
                                textAlign: TextAlign.center,
                              )),
                          child: GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => QrScannerScreen(
                                        title: info[index]['title'],
                                        value: index))),
                            child: Image.asset(
                              info[index]['img'],
                              color: color.AppColor.pageBackground,
                              // fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
          Container(
            width: _width,
            height: (_height - appBar().preferredSize.height) * 0.2,
            padding: const EdgeInsets.all(10),
            // color: color.AppColor.gradientFirst,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: _width * 0.7,
                child: Image.asset(
                  "assets/pharmalinx.png",
                ),
              ),
              // const SizedBox(width: 10),
              // Container(
              //   width: _width / 3 - 60,
              //   child: Image.asset(
              //     "assets/zauq.png",
              //   ),
              // ),
              // const SizedBox(width: 10),
              // Container(
              //   width: _width / 3 + 10,
              //   child: Image.asset(
              //     "assets/pharmatrax.png",
              //   ),
              // ),
            ]),
          )
        ]),
      ),
    );
  }
}
