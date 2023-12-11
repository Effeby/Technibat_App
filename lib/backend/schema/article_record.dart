import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArticleRecord extends FirestoreRecord {
  ArticleRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nom_article" field.
  String? _nomArticle;
  String get nomArticle => _nomArticle ?? '';
  bool hasNomArticle() => _nomArticle != null;

  // "prix" field.
  String? _prix;
  String get prix => _prix ?? '';
  bool hasPrix() => _prix != null;

  // "nomCategorie" field.
  String? _nomCategorie;
  String get nomCategorie => _nomCategorie ?? '';
  bool hasNomCategorie() => _nomCategorie != null;

  // "taille" field.
  String? _taille;
  String get taille => _taille ?? '';
  bool hasTaille() => _taille != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "caracteristique" field.
  String? _caracteristique;
  String get caracteristique => _caracteristique ?? '';
  bool hasCaracteristique() => _caracteristique != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  void _initializeFields() {
    _nomArticle = snapshotData['nom_article'] as String?;
    _prix = snapshotData['prix'] as String?;
    _nomCategorie = snapshotData['nomCategorie'] as String?;
    _taille = snapshotData['taille'] as String?;
    _description = snapshotData['description'] as String?;
    _caracteristique = snapshotData['caracteristique'] as String?;
    _photo = snapshotData['photo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('article');

  static Stream<ArticleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArticleRecord.fromSnapshot(s));

  static Future<ArticleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArticleRecord.fromSnapshot(s));

  static ArticleRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ArticleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArticleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArticleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArticleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArticleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArticleRecordData({
  String? nomArticle,
  String? prix,
  String? nomCategorie,
  String? taille,
  String? description,
  String? caracteristique,
  String? photo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nom_article': nomArticle,
      'prix': prix,
      'nomCategorie': nomCategorie,
      'taille': taille,
      'description': description,
      'caracteristique': caracteristique,
      'photo': photo,
    }.withoutNulls,
  );

  return firestoreData;
}

class ArticleRecordDocumentEquality implements Equality<ArticleRecord> {
  const ArticleRecordDocumentEquality();

  @override
  bool equals(ArticleRecord? e1, ArticleRecord? e2) {
    return e1?.nomArticle == e2?.nomArticle &&
        e1?.prix == e2?.prix &&
        e1?.nomCategorie == e2?.nomCategorie &&
        e1?.taille == e2?.taille &&
        e1?.description == e2?.description &&
        e1?.caracteristique == e2?.caracteristique &&
        e1?.photo == e2?.photo;
  }

  @override
  int hash(ArticleRecord? e) => const ListEquality().hash([
        e?.nomArticle,
        e?.prix,
        e?.nomCategorie,
        e?.taille,
        e?.description,
        e?.caracteristique,
        e?.photo
      ]);

  @override
  bool isValidKey(Object? o) => o is ArticleRecord;
}
