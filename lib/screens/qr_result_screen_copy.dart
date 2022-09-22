import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
    "qrCode":
        "0101234567890128217vPQCNzhS3hm491UZF092e0JC35KGuP2swYDeTIxUSGDw/LUX0O4AxWU1uFkRRWge",
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
    },
    "Consumer": {
      "Name": '',
      "IsOwn": false,
      "DateTime": '',
    },
  },
  {
    "qrCode":
        "01012345678901282122OetJO7LfmQ991UZF092I7IbkEMbK65q6TICTn0cy+lUpDlVrYN0T9LMhPR+Nm87",
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
    },
    "Consumer": {
      "Name": '',
      "IsOwn": false,
      "DateTime": '',
    },
  },
  {
    "qrCode":
        "010123456789012821NjncT9vQg53z491UZF092k0X+SyyWtHfozicLRLu6UlWRtWDH3xWjC1pEDQYTg9wI",
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
    },
    "Consumer": {
      "Name": '',
      "IsOwn": false,
      "DateTime": '',
    },
  },
];

class _QRResultScreenState extends State<QRResultScreen> {
  int? indexofData;

  @override
  void initState() {
    for (int i = 0; i < jsonList.length; i++) {
      if (widget.qrCode == jsonList[i]["qrCode"]) {
        setState(() {
          indexofData = i;
        });
        log(jsonList[i].toString());
      }
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title.toString()),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(height: 50),
          Text(
            widget.qrCode.toString(),
            style: TextStyle(
              color: color.AppColor.pageTitleFirstColor,
            ),
          ),
          const SizedBox(height: 20),
          const SizedBox(height: 20),
          if (widget.title == 'Manufacturer') ...{
            if (jsonList[indexofData!]["Manufacturer"]["IsOwn"] == false &&
                jsonList[indexofData!]["Distributor"]["IsOwn"] == false &&
                jsonList[indexofData!]["Pharmacist"]["IsOwn"] == false &&
                jsonList[indexofData!]["Consumer"]["IsOwn"] == false) ...{
              MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  jsonList[indexofData!]["Manufacturer"]["Name"] = "ALi";
                  jsonList[indexofData!]["Manufacturer"]["IsOwn"] = true;
                  jsonList[indexofData!]["Manufacturer"]["DateTime"] =
                      DateFormat('yyyy-MM-dd hh:mm:ss')
                          .format(DateTime.now())
                          .toString();
                  setState(() {});
                },
                child: const Text("Add OWner"),
              )
            }
          },
          if (widget.title == 'Distributor') ...{
            if (jsonList[indexofData!]["Distributor"]["IsOwn"] == false &&
                jsonList[indexofData!]["Manufacturer"]["IsOwn"] == true) ...{
              MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  jsonList[indexofData!]["Manufacturer"]["IsOwn"] = false;
                  jsonList[indexofData!]["Distributor"]["Name"] = "Hamza";
                  jsonList[indexofData!]["Distributor"]["IsOwn"] = true;
                  jsonList[indexofData!]["Distributor"]["DateTime"] =
                      DateFormat('yyyy-MM-dd hh:mm:ss')
                          .format(DateTime.now())
                          .toString();
                  setState(() {});
                },
                child: const Text("Add OWner"),
              )
            }
          },
          if (widget.title == 'Pharmacy') ...{
            if (jsonList[indexofData!]["Pharmacist"]["IsOwn"] == false &&
                jsonList[indexofData!]["Distributor"]["IsOwn"] == true) ...{
              MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  jsonList[indexofData!]["Manufacturer"]["IsOwn"] = false;
                  jsonList[indexofData!]["Distributor"]["IsOwn"] = false;
                  jsonList[indexofData!]["Pharmacist"]["Name"] = "Usama";
                  jsonList[indexofData!]["Pharmacist"]["IsOwn"] = true;
                  jsonList[indexofData!]["Pharmacist"]["DateTime"] =
                      DateFormat('yyyy-MM-dd hh:mm:ss')
                          .format(DateTime.now())
                          .toString();
                  setState(() {});
                },
                child: const Text("Add OWner"),
              )
            }
          },
          if (widget.title == 'Consumer') ...{
            if (jsonList[indexofData!]["Consumer"]["IsOwn"] == false &&
                jsonList[indexofData!]["Pharmacist"]["IsOwn"] == true) ...{
              MaterialButton(
                color: Colors.blue,
                onPressed: () {
                  jsonList[indexofData!]["Manufacturer"]["IsOwn"] = false;
                  jsonList[indexofData!]["Distributor"]["IsOwn"] = false;
                  jsonList[indexofData!]["Pharmacist"]["IsOwn"] = false;
                  jsonList[indexofData!]["Consumer"]["Name"] = "Ahmad";
                  jsonList[indexofData!]["Consumer"]["IsOwn"] = true;
                  jsonList[indexofData!]["Consumer"]["DateTime"] =
                      DateFormat('yyyy-MM-dd hh:mm:ss')
                          .format(DateTime.now())
                          .toString();
                  setState(() {});
                },
                child: const Text("Add OWner"),
              )
            }
          },
          const SizedBox(height: 20),
          Container(
            height: MediaQuery.of(context).size.width - 20,
            width: MediaQuery.of(context).size.width - 20,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            color: color.AppColor.gradientFirst.withOpacity(0.1),
            child: Column(children: [
              if (widget.value == 3) ...{
                if (jsonList[indexofData!]["Consumer"]["IsOwn"] == true) ...{
                  SizedBox(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Type: Consumer",
                              style: TextStyle(
                                  color: color.AppColor.pageButtonFirstColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Name: ${jsonList[indexofData!]["Consumer"]["Name"]}",
                              style: TextStyle(
                                  color: color.AppColor.pageTitleFirstColor),
                            ),
                            Text(
                              'Owner: ${jsonList[indexofData!]["Consumer"]["IsOwn"]}',
                              style: TextStyle(
                                  color: color.AppColor.pageTitleFirstColor),
                            ),
                            Text(
                              "Date: ${jsonList[indexofData!]["Consumer"]["DateTime"]}",
                              style: TextStyle(
                                  color: color.AppColor.pageTitleFirstColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                }
              },
              const SizedBox(height: 10),
              if ((widget.value) as int >= 2) ...{
                if (jsonList[indexofData!]["Pharmacist"]["IsOwn"] == true ||
                    jsonList[indexofData!]["Pharmacist"]["IsOwn"] == false) ...{
                  SizedBox(
                    child: Column(
                      children: [
                        if (jsonList[indexofData!]["Pharmacist"]["Name"]
                            .isNotEmpty) ...{
                          Column(
                            children: [
                              Text("Type: Pharmacist",
                                  style: TextStyle(
                                      color:
                                          color.AppColor.pageButtonFirstColor,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                "Name: ${jsonList[indexofData!]["Pharmacist"]["Name"]}",
                                style: TextStyle(
                                    color: color.AppColor.pageTitleFirstColor),
                              ),
                              Text(
                                'Owner: ${jsonList[indexofData!]["Pharmacist"]["IsOwn"]}',
                                style: TextStyle(
                                    color: color.AppColor.pageTitleFirstColor),
                              ),
                              Text(
                                "Date: ${jsonList[indexofData!]["Pharmacist"]["DateTime"]}",
                                style: TextStyle(
                                    color: color.AppColor.pageTitleFirstColor),
                              ),
                            ],
                          ),
                        }
                      ],
                    ),
                  )
                }
              },
              const SizedBox(height: 10),
              if ((widget.value) as int >= 1) ...{
                if (jsonList[indexofData!]["Distributor"]["IsOwn"] == true ||
                    jsonList[indexofData!]["Distributor"]["IsOwn"] ==
                        false) ...{
                  SizedBox(
                    child: Column(
                      children: [
                        if (jsonList[indexofData!]["Distributor"]["Name"]
                            .isNotEmpty) ...{
                          Column(
                            children: [
                              Text(
                                "Type: Distributor",
                                style: TextStyle(
                                    color: color.AppColor.pageButtonFirstColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Name: ${jsonList[indexofData!]["Distributor"]["Name"]}",
                                style: TextStyle(
                                    color: color.AppColor.pageTitleFirstColor),
                              ),
                              Text(
                                'Owner: ${jsonList[indexofData!]["Distributor"]["IsOwn"]}',
                                style: TextStyle(
                                    color: color.AppColor.pageTitleFirstColor),
                              ),
                              Text(
                                "Date: ${jsonList[indexofData!]["Distributor"]["DateTime"]}",
                                style: TextStyle(
                                    color: color.AppColor.pageTitleFirstColor),
                              ),
                            ],
                          ),
                        }
                      ],
                    ),
                  )
                }
              },
              const SizedBox(height: 10),
              if ((widget.value) as int >= 0) ...{
                if (jsonList[indexofData!]["Manufacturer"]["IsOwn"] == true ||
                    jsonList[indexofData!]["Manufacturer"]["IsOwn"] ==
                        false) ...{
                  SizedBox(
                    child: Column(children: [
                      if (jsonList[indexofData!]["Manufacturer"]["Name"]
                          .isNotEmpty) ...{
                        Column(children: [
                          Text(
                            "Type: Manufacturer",
                            style: TextStyle(
                                color: color.AppColor.pageButtonFirstColor,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Name: ${jsonList[indexofData!]["Manufacturer"]["Name"]}",
                            style: TextStyle(
                                color: color.AppColor.pageTitleFirstColor),
                          ),
                          Text(
                            'Owner: ${jsonList[indexofData!]["Manufacturer"]["IsOwn"]}',
                            style: TextStyle(
                                color: color.AppColor.pageTitleFirstColor),
                          ),
                          Text(
                            "Date: ${jsonList[indexofData!]["Manufacturer"]["DateTime"]}",
                            style: TextStyle(
                                color: color.AppColor.pageTitleFirstColor),
                          ),
                        ]),
                      }
                    ]),
                  )
                }
              },
            ]),
          ),
        ]),
      ),
    );
  }
}
