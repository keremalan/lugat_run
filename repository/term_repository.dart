import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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