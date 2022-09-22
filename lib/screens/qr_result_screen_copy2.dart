import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../screens/my_home_screen.dart';
import '../widgets/qr_result.dart';
import '/colors.dart' as color;

class QRResultScreen extends StatefulWidget {
  QRResultScreen(
      {Key? key,
      required this.qrCode,
      required this.title,
      required this.value})
      : super(key: key);

  String? qrCode;
  String? title;
  int? value;

  @override
  State<QRResultScreen> createState() => _QRResultScreenState();
}

List jsonList = [
  {
    "Batch": "ZAUQ2PHARMATRAX",
    "Expiry": "250722",
    "UnitCartonGtin": "08964001743507",
    "CartonGtin": "18964001743504",
    "Cartons": [
      {
        "CartonSerial": "12341012220312551772",
        "UnitCartons": [
          {
            "UnitCarton": "47770012220312524674",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          },
          {
            "UnitCarton": "47770012220312524420",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          },
          {
            "UnitCarton": "47770012220312524004",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          },
          {
            "UnitCarton": "47770012220312523879",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          },
          {
            "UnitCarton": "47770012220312520341",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          }
        ],
        "Manufacturer": {
          "Name": '',
          "IsOwn": false,
          "DateTime": '',
        },
        "Distributor": {
          "Name": '',
          "IsOwn": false,
          "DateTime": '',
        },
        "Pharmacist": {
          "Name": '',
          "IsOwn": false,
          "DateTime": '',
        }
      },
      {
        "CartonSerial": "12341012220313254367",
        "UnitCartons": [
          {
            "UnitCarton": "47770012220313043511",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          },
          {
            "UnitCarton": "47770012220313044517",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          },
          {
            "UnitCarton": "47770012220312520339",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          },
          {
            "UnitCarton": "47770012220313042004",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          },
          {
            "UnitCarton": "47770012220313044134",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          }
        ],
        "Manufacturer": {
          "Name": '',
          "IsOwn": false,
          "DateTime": '',
        },
        "Distributor": {
          "Name": '',
          "IsOwn": false,
          "DateTime": '',
        },
        "Pharmacist": {
          "Name": '',
          "IsOwn": false,
          "DateTime": '',
        }
      },
      {
        "CartonSerial": "12341012220313484820",
        "UnitCartons": [
          {
            "UnitCarton": "47770012220313024193",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          },
          {
            "UnitCarton": "47770012220313033280",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          },
          {
            "UnitCarton": "47770012220313041615",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          },
          {
            "UnitCarton": "47770012220313041180",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          },
          {
            "UnitCarton": "47770012220313034635",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          }
        ],
        "Manufacturer": {
          "Name": '',
          "IsOwn": false,
          "DateTime": '',
        },
        "Distributor": {
          "Name": '',
          "IsOwn": false,
          "DateTime": '',
        },
        "Pharmacist": {
          "Name": '',
          "IsOwn": false,
          "DateTime": '',
        }
      },
      {
        "CartonSerial": "12341012220313532357",
        "UnitCartons": [
          {
            "UnitCarton": "47770012220313022688",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          },
          {
            "UnitCarton": "47770012220313013617",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          },
          {
            "UnitCarton": "47770012220313014291",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          },
          {
            "UnitCarton": "47770012220313014371",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          },
          {
            "UnitCarton": "47770012220313015183",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          }
        ],
        "Manufacturer": {
          "Name": '',
          "IsOwn": false,
          "DateTime": '',
        },
        "Distributor": {
          "Name": '',
          "IsOwn": false,
          "DateTime": '',
        },
        "Pharmacist": {
          "Name": '',
          "IsOwn": false,
          "DateTime": '',
        }
      },
      {
        "CartonSerial": "12341012220313591945",
        "UnitCartons": [
          {
            "UnitCarton": "47770012220313020390",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          },
          {
            "UnitCarton": "47770012220313013430",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          },
          {
            "UnitCarton": "47770012220313012751",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          },
          {
            "UnitCarton": "47770012220313012103",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          },
          {
            "UnitCarton": "47770012220313011637",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          }
        ],
        "Manufacturer": {
          "Name": '',
          "IsOwn": false,
          "DateTime": '',
        },
        "Distributor": {
          "Name": '',
          "IsOwn": false,
          "DateTime": '',
        },
        "Pharmacist": {
          "Name": '',
          "IsOwn": false,
          "DateTime": '',
        }
      },
      {
        "CartonSerial": "12341012220314043657",
        "UnitCartons": [
          {
            "UnitCarton": "47770012220313010093",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          },
          {
            "UnitCarton": "47770012220313010469",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          },
          {
            "UnitCarton": "47770012220313010835",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          },
          {
            "UnitCarton": "47770012220313011326",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          },
          {
            "UnitCarton": "47770012220313024549",
            "Consumer": {
              "Name": '',
              "IsOwn": false,
              "DateTime": '',
            }
          }
        ],
        "Manufacturer": {
          "Name": '',
          "IsOwn": false,
          "DateTime": '',
        },
        "Distributor": {
          "Name": '',
          "IsOwn": false,
          "DateTime": '',
        },
        "Pharmacist": {
          "Name": '',
          "IsOwn": false,
          "DateTime": '',
        }
      }
    ]
  },
];

class _QRResultScreenState extends State<QRResultScreen> {
  int? indexofData;
  int? subIndexofData;
  bool isTrue = false;
  String _batch = "";
  String _expiry = "";
  String _unitCartonGtin = "";
  String _cartonGtin = "";
  List _cartons = [];

  // "Batch": "ZAUQ2PHARMATRAX",
  //   "Expiry": "250722",
  //   "UnitCartonGtin": "08964001743507",
  //   "CartonGtin": "18964001743504",
  //   "Cartons": [
  //     {
  //       "CartonSerial": "12341012220312551772",
  //       "UnitCartons": [
  //         {
  //           "UnitCarton": "47770012220312524674",
  //           "Consumer": {
  //             "Name": '',
  //             "IsOwn": false,
  //             "DateTime": '',
  //           }
  //         },

  @override
  void initState() {
    setData();
    super.initState();
  }

  setData() {
    _batch = jsonList[0]['Batch'];
    _expiry = jsonList[0]['Expiry'];
    _unitCartonGtin = jsonList[0]['UnitCartonGtin'];
    _cartonGtin = jsonList[0]['CartonGtin'];
    log("--------------------------");
    log("Data: ${widget.qrCode.toString().length}");
    log("Batch: $_batch");
    log("Expiry: $_expiry");
    log("UnitCartonGtin: $_unitCartonGtin");
    log("CartonGtin: $_cartonGtin");
    log("Cartons: $_cartons");
    log("--------------------------");
    if (widget.value! == 3) {
      for (int i = 0; i < jsonList[0]['Cartons'].length; i++) {
        for (int j = 0;
            j < jsonList[0]['Cartons'][i]['UnitCartons'].length;
            j++) {
          if (widget.qrCode!.contains(
              jsonList[0]['Cartons'][i]['UnitCartons'][j]['UnitCarton'])) {
            setState(() {
              indexofData = i;
              subIndexofData = j;
              isTrue = true;
            });
            log(isTrue.toString());
          }
        }
      }
    } else {
      for (int i = 0; i < jsonList[0]['Cartons'].length; i++) {
        if (widget.qrCode!
            .contains(jsonList[0]['Cartons'][i]['CartonSerial'])) {
          setState(() {
            indexofData = i;
            isTrue = true;
          });
          log(isTrue.toString());
        }
      }
    }
  }

  showDialogBox() {
    Navigator.of(context).pop();
    Fluttertoast.showToast(
      msg: 'Oops! No Data Found.',
    );

    //   return AlertDialog(
    //     title: Text(
    //       'Oops!',
    //       style: TextStyle(
    //           fontFamily: 'OpenSans',
    //           fontSize: 14,
    //           fontWeight: FontWeight.bold,
    //           color: color.AppColor.pageTitleFirstColor),
    //     ),
    //     // content: Text('Do you really want to delete?'),
    //     content: Text(
    //       'No Data Found.',
    //       style: Theme.of(context).textTheme.bodyText1,
    //     ),
    //     actions: <Widget>[
    //       TextButton(
    //         onPressed: () {
    //           Navigator.of(context).pop();
    //           Navigator.of(context).pushReplacementNamed('/my_home_screen');
    //         },
    //         child: const Text('Ok'),
    //       ),
    //     ],
    //   );
  }

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;

    bool _checkConsumers() {
      for (int i = 0;
          i < jsonList[0]['Cartons'][indexofData!]['UnitCartons'].length;
          i++) {
        if (jsonList[0]['Cartons'][indexofData!]['UnitCartons'][i]["Consumer"]
                ["IsOwn"] !=
            false) {
          return false;
        }
      }
      return true;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title.toString(),
          style: TextStyle(color: color.AppColor.pageBackground),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            QRResult(widget.qrCode),
            if (isTrue) ...{
              const SizedBox(height: 5),
              if (widget.value! < 3) ...{
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("UnitCartons list:",
                        style: Theme.of(context).textTheme.bodyText1),
                    SizedBox(
                      height: _height * 0.45,
                      child: Column(
                        children: [
                          for (int i = 0;
                              i <
                                  jsonList[0]['Cartons'][indexofData!]
                                          ['UnitCartons']
                                      .length;
                              i++) ...{
                            Container(
                              color: ((i + 1) % 2 == 0)
                                  ? color.AppColor.gradientFirst
                                      .withOpacity(0.35)
                                  : color.AppColor.gradientFirst
                                      .withOpacity(0.5),
                              child: ListTile(
                                leading: Text("${i + 1}",
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                                title: Text(
                                    "${jsonList[0]['Cartons'][indexofData]['UnitCartons'][i]['UnitCarton']}",
                                    style:
                                        Theme.of(context).textTheme.bodyText1),
                              ),
                            ),
                          },
                        ],
                      ),
                    ),
                  ],
                ),
              },
              const SizedBox(height: 5),
              if (widget.title == 'Manufacturer') ...{
                if (jsonList[0]['Cartons'][indexofData!]["Manufacturer"]
                            ["IsOwn"] ==
                        false &&
                    jsonList[0]['Cartons'][indexofData!]["Distributor"]
                            ["IsOwn"] ==
                        false &&
                    jsonList[0]['Cartons'][indexofData!]["Pharmacist"]
                            ["IsOwn"] ==
                        false &&
                    _checkConsumers()) ...{
                  MaterialButton(
                    color: Colors.blue,
                    onPressed: () {
                      jsonList[0]['Cartons'][indexofData!]["Manufacturer"]
                          ["Name"] = "Pharma Trax Manufacturer";
                      jsonList[0]['Cartons'][indexofData!]["Manufacturer"]
                          ["IsOwn"] = true;
                      jsonList[0]['Cartons'][indexofData!]["Manufacturer"]
                              ["DateTime"] =
                          DateFormat('yyyy-MM-dd hh:mm:ss')
                              .format(DateTime.now())
                              .toString();
                      setState(() {});
                    },
                    child: const Text("Add Owner"),
                  )
                }
              },
              if (widget.title == 'Distributor') ...{
                if (jsonList[0]['Cartons'][indexofData!]["Distributor"]
                            ["IsOwn"] ==
                        false &&
                    jsonList[0]['Cartons'][indexofData!]["Manufacturer"]
                            ["IsOwn"] ==
                        true) ...{
                  MaterialButton(
                    color: Colors.blue,
                    onPressed: () {
                      jsonList[0]['Cartons'][indexofData!]["Manufacturer"]
                          ["IsOwn"] = false;
                      jsonList[0]['Cartons'][indexofData!]["Distributor"]
                          ["Name"] = "Pharma Trax Distributor";
                      jsonList[0]['Cartons'][indexofData!]["Distributor"]
                          ["IsOwn"] = true;
                      jsonList[0]['Cartons'][indexofData!]["Distributor"]
                              ["DateTime"] =
                          DateFormat('yyyy-MM-dd hh:mm:ss')
                              .format(DateTime.now())
                              .toString();
                      setState(() {});
                    },
                    child: const Text("Add Owner"),
                  )
                }
              },
              if (widget.title == 'Pharmacy') ...{
                if (jsonList[0]['Cartons'][indexofData!]["Pharmacist"]
                            ["IsOwn"] ==
                        false &&
                    jsonList[0]['Cartons'][indexofData!]["Distributor"]
                            ["IsOwn"] ==
                        true) ...{
                  MaterialButton(
                    color: Colors.blue,
                    onPressed: () {
                      jsonList[0]['Cartons'][indexofData!]["Manufacturer"]
                          ["IsOwn"] = false;
                      jsonList[0]['Cartons'][indexofData!]["Distributor"]
                          ["IsOwn"] = false;
                      jsonList[0]['Cartons'][indexofData!]["Pharmacist"]
                          ["Name"] = "Pharma Trax Pharmacist";
                      jsonList[0]['Cartons'][indexofData!]["Pharmacist"]
                          ["IsOwn"] = true;
                      jsonList[0]['Cartons'][indexofData!]["Pharmacist"]
                              ["DateTime"] =
                          DateFormat('yyyy-MM-dd hh:mm:ss')
                              .format(DateTime.now())
                              .toString();
                      setState(() {});
                    },
                    child: const Text("Add Owner"),
                  )
                }
              },
              if (widget.title == 'Consumer') ...{
                if (jsonList[0]['Cartons'][indexofData!]['UnitCartons']
                            [subIndexofData!]["Consumer"]["IsOwn"] ==
                        false &&
                    jsonList[0]['Cartons'][indexofData!]["Pharmacist"]
                            ["IsOwn"] ==
                        true) ...{
                  MaterialButton(
                    color: Colors.blue,
                    onPressed: () {
                      jsonList[0]['Cartons'][indexofData!]["Manufacturer"]
                          ["IsOwn"] = false;
                      jsonList[0]['Cartons'][indexofData!]["Distributor"]
                          ["IsOwn"] = false;
                      jsonList[0]['Cartons'][indexofData!]["Pharmacist"]
                          ["IsOwn"] = false;
                      jsonList[0]['Cartons'][indexofData!]['UnitCartons']
                              [subIndexofData!]["Consumer"]["Name"] =
                          "Pharma Trax Consumer";
                      jsonList[0]['Cartons'][indexofData!]['UnitCartons']
                          [subIndexofData!]["Consumer"]["IsOwn"] = true;
                      jsonList[0]['Cartons'][indexofData!]['UnitCartons']
                              [subIndexofData!]["Consumer"]["DateTime"] =
                          DateFormat('yyyy-MM-dd hh:mm:ss')
                              .format(DateTime.now())
                              .toString();
                      setState(() {});
                    },
                    child: const Text("Add Owner"),
                  )
                }
              },
              const SizedBox(height: 5),
              Container(
                height: (_height * 0.55 / 4) * (widget.value! + 1),
                width: _width,
                decoration: BoxDecoration(
                    color: color.AppColor.pageButtonTextSecondColor
                        .withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (widget.value == 3) ...{
                        if (jsonList[0]['Cartons'][indexofData!]['UnitCartons']
                                [subIndexofData!]["Consumer"]["IsOwn"] ==
                            true) ...{
                          SizedBox(
                            child: ListTile(
                              leading: (jsonList[0]['Cartons'][indexofData!]
                                              ['UnitCartons'][subIndexofData!]
                                          ["Consumer"]["Name"]
                                      .toString()
                                      .isNotEmpty)
                                  ? Image.asset("assets/consumer.png")
                                  : null,
                              title: Text(
                                "${jsonList[0]['Cartons'][indexofData!]['UnitCartons'][subIndexofData!]["Consumer"]["Name"]}",
                                style: TextStyle(
                                    color: color.AppColor.pageTitleFirstColor),
                              ),
                              subtitle: Text(
                                  "${jsonList[0]['Cartons'][indexofData!]['UnitCartons'][subIndexofData!]["Consumer"]["DateTime"]}"),
                              trailing: (jsonList[0]['Cartons'][indexofData!]
                                              ['UnitCartons'][subIndexofData!]
                                          ["Consumer"]["Name"]
                                      .toString()
                                      .isNotEmpty)
                                  ? const Icon(Icons.done)
                                  : null,
                            ),
                          )
                        }
                      },
                      const SizedBox(height: 5),
                      if ((widget.value) as int >= 2) ...{
                        if (jsonList[0]['Cartons'][indexofData!]["Pharmacist"]
                                    ["IsOwn"] ==
                                true ||
                            jsonList[0]['Cartons'][indexofData!]["Pharmacist"]
                                    ["IsOwn"] ==
                                false) ...{
                          SizedBox(
                            child: ListTile(
                              leading: (jsonList[0]['Cartons'][indexofData!]
                                          ["Pharmacist"]["Name"]
                                      .toString()
                                      .isNotEmpty)
                                  ? Image.asset("assets/pharmacist.png")
                                  : null,
                              title: Text(
                                "${jsonList[0]['Cartons'][indexofData!]["Pharmacist"]["Name"]}",
                                style: TextStyle(
                                    color: color.AppColor.pageTitleFirstColor),
                              ),
                              subtitle: Text(
                                  "${jsonList[0]['Cartons'][indexofData!]["Pharmacist"]["DateTime"]}"),
                              trailing: (jsonList[0]['Cartons'][indexofData!]
                                          ["Pharmacist"]["Name"]
                                      .toString()
                                      .isNotEmpty)
                                  ? jsonList[0]['Cartons'][indexofData!]
                                              ["Pharmacist"]["IsOwn"] ==
                                          true
                                      ? const Icon(Icons.done)
                                      : const Icon(Icons.arrow_upward)
                                  : null,
                            ),
                          )
                        }
                      },
                      const SizedBox(height: 5),
                      if ((widget.value) as int >= 1) ...{
                        if (jsonList[0]['Cartons'][indexofData!]["Distributor"]
                                    ["IsOwn"] ==
                                true ||
                            jsonList[0]['Cartons'][indexofData!]["Distributor"]
                                    ["IsOwn"] ==
                                false) ...{
                          SizedBox(
                            child: ListTile(
                              leading: (jsonList[0]['Cartons'][indexofData!]
                                          ["Distributor"]["Name"]
                                      .toString()
                                      .isNotEmpty)
                                  ? Image.asset("assets/distributor.png")
                                  : null,
                              title: Text(
                                "${jsonList[0]['Cartons'][indexofData!]["Distributor"]["Name"]}",
                                style: TextStyle(
                                    color: color.AppColor.pageTitleFirstColor),
                              ),
                              subtitle: Text(
                                  "${jsonList[0]['Cartons'][indexofData!]["Distributor"]["DateTime"]}"),
                              trailing: (jsonList[0]['Cartons'][indexofData!]
                                          ["Distributor"]["Name"]
                                      .toString()
                                      .isNotEmpty)
                                  ? jsonList[0]['Cartons'][indexofData!]
                                              ["Distributor"]["IsOwn"] ==
                                          true
                                      ? const Icon(Icons.done)
                                      : const Icon(Icons.arrow_upward)
                                  : null,
                            ),
                          )
                        }
                      },
                      const SizedBox(height: 5),
                      if ((widget.value) as int >= 0) ...{
                        if (jsonList[0]['Cartons'][indexofData!]["Manufacturer"]
                                    ["IsOwn"] ==
                                true ||
                            jsonList[0]['Cartons'][indexofData!]["Manufacturer"]
                                    ["IsOwn"] ==
                                false) ...{
                          SizedBox(
                            child: ListTile(
                              leading: (jsonList[0]['Cartons'][indexofData!]
                                          ["Manufacturer"]["Name"]
                                      .toString()
                                      .isNotEmpty)
                                  ? Image.asset("assets/manufacturer.png")
                                  : null,
                              title: Text(
                                "${jsonList[0]['Cartons'][indexofData!]["Manufacturer"]["Name"]}",
                                style: TextStyle(
                                    color: color.AppColor.pageTitleFirstColor),
                              ),
                              subtitle: Text(
                                  "${jsonList[0]['Cartons'][indexofData!]["Manufacturer"]["DateTime"]}"),
                              trailing: (jsonList[0]['Cartons'][indexofData!]
                                          ["Manufacturer"]["Name"]
                                      .toString()
                                      .isNotEmpty)
                                  ? jsonList[0]['Cartons'][indexofData!]
                                              ["Manufacturer"]["IsOwn"] ==
                                          true
                                      ? const Icon(Icons.done)
                                      : const Icon(Icons.arrow_upward)
                                  : null,
                            ),
                          )
                        }
                      },
                    ]),
              ),
            } else ...{
              showDialogBox()
            },
          ]),
        ),
      ),
    );
  }
}
