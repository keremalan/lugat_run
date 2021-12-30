import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Term {
  final String termTitle;
  final String termMean;
  final String termExample;
  final String termDescription;
  final String termImage;
  final String termAuthor;
  final String termContributor;
  final String termContributeRequests;
  final bool isSaved;

  Term({
      required this.termTitle,
      required this.termMean,
      required this.termExample,
      required this.termDescription,
      required this.termImage,
      required this.termAuthor,
      required this.termContributor,
      required this.termContributeRequests,
      required this.isSaved,
  });

  factory Term.fromJson(Map<String, dynamic> json) {
    return Term(
      termTitle: json['termTitle'],
      termMean: json['termMean'],
      termExample: json['termExample'],
      termDescription: json['termDescription'],
      termImage: json['termImage'],
      termAuthor: json['termAuthor'],
      termContributor: json['termContributor'],
      termContributeRequests: json['termContributeRequiests'],
      isSaved: json['isSaved'],

    );
  }
}