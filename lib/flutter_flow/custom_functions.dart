import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/auth/firebase_auth/auth_util.dart';

String? fileToBase64(String? filePath) {
  //File file = File(filePath);
  //List<int> fileBytes = file.readAsBytesSync();
  //String base64String = base64Encode(fileBytes);
  //return base64String;
}