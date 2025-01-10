import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String combinedLink(
  String link,
  String id,
) {
  return '$link' + '$id';
}

bool isWordMatch(
  String word,
  String status,
) {
  // check if word is matched to status
  return word.toLowerCase() == status.toLowerCase();
}

bool isGreaterThanZero(int clientid) {
  if (clientid > 0)
    return true;
  else
    return false;
}

int stringToInt(String string) {
  return int.parse(string);
}
