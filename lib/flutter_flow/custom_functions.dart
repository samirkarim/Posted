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
import '/auth/firebase_auth/auth_util.dart';

List<DocumentReference> generateListOfUsers(
  DocumentReference authUser,
  DocumentReference otherUser,
) {
  return [authUser, otherUser];
}

List<String> generateListOfNames(
  String authUserName,
  String otherUserName,
) {
  return [authUserName, otherUserName];
}

DocumentReference getOtherUserReference(
  List<DocumentReference> listOfUserReferences,
  DocumentReference authUserReference,
) {
  return authUserReference == listOfUserReferences.first
      ? listOfUserReferences.last
      : listOfUserReferences.first;
}

String getOtherUserName(
  List<String> listOfNames,
  String authUserName,
) {
  return authUserName == listOfNames.first
      ? listOfNames.last
      : listOfNames.first;
}
