import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MonPanierRecord extends FirestoreRecord {
  MonPanierRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomArticle" field.
  String? _nomArticle;
  String get nomArticle => _nomArticle ?? '';
  bool hasNomArticle() => _nomArticle != null;

  // "prix" field.
  String? _prix;
  String get prix => _prix ?? '';
  bool hasPrix() => _prix != null;

  // "quantite" field.
  String? _quantite;
  String get quantite => _quantite ?? '';
  bool hasQuantite() => _quantite != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  void _initializeFields() {
    _nomArticle = snapshotData['nomArticle'] as String?;
    _prix = snapshotData['prix'] as String?;
    _quantite = snapshotData['quantite'] as String?;
    _photo = snapshotData['photo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('monPanier');

  static Stream<MonPanierRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MonPanierRecord.fromSnapshot(s));

  static Future<MonPanierRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MonPanierRecord.fromSnapshot(s));

  static MonPanierRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MonPanierRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MonPanierRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MonPanierRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MonPanierRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MonPanierRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMonPanierRecordData({
  String? nomArticle,
  String? prix,
  String? quantite,
  String? photo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomArticle': nomArticle,
      'prix': prix,
      'quantite': quantite,
      'photo': photo,
    }.withoutNulls,
  );

  return firestoreData;
}

class MonPanierRecordDocumentEquality implements Equality<MonPanierRecord> {
  const MonPanierRecordDocumentEquality();

  @override
  bool equals(MonPanierRecord? e1, MonPanierRecord? e2) {
    return e1?.nomArticle == e2?.nomArticle &&
        e1?.prix == e2?.prix &&
        e1?.quantite == e2?.quantite &&
        e1?.photo == e2?.photo;
  }

  @override
  int hash(MonPanierRecord? e) => const ListEquality()
      .hash([e?.nomArticle, e?.prix, e?.quantite, e?.photo]);

  @override
  bool isValidKey(Object? o) => o is MonPanierRecord;
}
