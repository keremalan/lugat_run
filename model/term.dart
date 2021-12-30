import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Term {
  final int id;
  final String termTitle;
  final String termMean;
  final String termExample;
  final String termDescription;
  final String termImage;
  final String termCreator;
  final List termContributor;
  final String termContributeRequests;
  final bool isSaved;

  Term({
      required this.id,
      required this.termTitle,
      required this.termMean,
      required this.termExample,
      required this.termDescription,
      required this.termImage,
      required this.termCreator,
      required this.termContributor,
      required this.termContributeRequests,
      required this.isSaved,
  });

  factory Term.fromJson(Map<String, dynamic> json) {
    return Term(
      id: json['id'],
      termTitle: json['termTitle'],
      termMean: json['termMean'],
      termExample: json['termExample'],
      termDescription: json['termDescription'],
      termImage: json['termImage'],
      termCreator: json['termCreator'],
      termContributor: json['termContributor'],
      termContributeRequests: json['termContributeRequiests'],
      isSaved: json['isSaved'],

    );
  }
}