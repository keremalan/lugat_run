import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TermRepository extends ChangeNotifier {

  final List<Term> terms = [
    Term("Tasarım", "Prototip", "Kerem Alan", "https://www.upload.ee/image/13740439/prototypeTerm__5_.png", "İlk model, örnek", "fff", "fufufu", "Can Araştıranoğlu", "https://www.upload.ee/image/13740474/profile.png"),
    Term("Tasarım", "Frototip", "Kerem Alan", "https://www.upload.ee/image/13740439/prototypeTerm__5_.png", "anl22amı", "fffeef", "fufufufuf", "Can Araştırmayanoğlu", "https://www.upload.ee/image/13740474/profile.png"),
    Term("Tasarım", "Brototip", "Kerem Alan", "https://www.upload.ee/image/13740439/prototypeTerm__5_.png", "anl22amı", "fqowqo", "qweo12o", "Can Babasıaraştıranoğlu", "https://www.upload.ee/image/13740474/profile.png"),
  ];
}

final termsProvider = ChangeNotifierProvider((ref) {
  return TermRepository();
});

class Term {
  String categoryName;
  String termName;
  String termAuthor;
  String termImageUrl;
  String termMean;
  String termExample;
  String termDescription;
  String contributorName;
  String contributorAvatar;

  Term(this.categoryName, this.termName, this.termAuthor, this.termImageUrl, this.termMean, this.termExample, this.termDescription, this.contributorName, this.contributorAvatar);
}

class addTerm extends StatelessWidget {
  final String categoryName;
  final String termName;
  final String termAuthor;
  final String termImageUrl;
  final String termMean;
  final String termExample;
  final String termDescription;
  final String contributorName;
  final String contributorAvatar;

  addTerm(this.categoryName, this.termName, this.termAuthor, this.termImageUrl, this.termMean, this.termExample, this.termDescription, this.contributorName, this.contributorAvatar);

  @override
  Widget build(BuildContext context) {
    CollectionReference termz = FirebaseFirestore.instance.collection('termz');
    
    Future<void> addTerz() {
      return termz
          .add({
        'categoryName': categoryName,
        'termName': termName,
        'termAuthor': termAuthor,
        'termImageUrl': termImageUrl,
        'termMean': termMean,
        'termExample': termExample,
        'termDescription': termDescription,
        'contributorName': contributorName,
        'contributorAvatar': contributorAvatar,
      })
          .then((value) => print("Term added"))
          .catchError((error) => print("Failed $error"));
    }
    return TextButton(onPressed: addTerz, child: Text('Add Term'),
    );
  }
}

