import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectionManager {
  static Future<bool> checkConnection() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    debugPrint("connectivityResult ${connectivityResult != ConnectivityResult.none}");
    return connectivityResult != ConnectivityResult.none;
  }
}
