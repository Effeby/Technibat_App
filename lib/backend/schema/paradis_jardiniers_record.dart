import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParadisJardiniersRecord extends FirestoreRecord {
  ParadisJardiniersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  bool hasNom() => _nom != null;

  // "prix" field.
  String? _prix;
  String get prix => _prix ?? '';
  bool hasPrix() => _prix != null;

  // "categorie" field.
  String? _categorie;
  String get categorie => _categorie ?? '';
  bool hasCategorie() => _categorie != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  void _initializeFields() {
    _nom = snapshotData['nom'] as String?;
    _prix = snapshotData['prix'] as String?;
    _categorie = snapshotData['categorie'] as String?;
    _photo = snapshotData['photo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('paradis_jardiniers');

  static Stream<ParadisJardiniersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ParadisJardiniersRecord.fromSnapshot(s));

  static Future<ParadisJardiniersRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ParadisJardiniersRecord.fromSnapshot(s));

  static ParadisJardiniersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ParadisJardiniersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ParadisJardiniersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ParadisJardiniersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ParadisJardiniersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ParadisJardiniersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createParadisJardiniersRecordData({
  String? nom,
  String? prix,
  String? categorie,
  String? photo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nom': nom,
      'prix': prix,
      'categorie': categorie,
      'photo': photo,
    }.withoutNulls,
  );

  return firestoreData;
}

class ParadisJardiniersRecordDocumentEquality
    implements Equality<ParadisJardiniersRecord> {
  const ParadisJardiniersRecordDocumentEquality();

  @override
  bool equals(ParadisJardiniersRecord? e1, ParadisJardiniersRecord? e2) {
    return e1?.nom == e2?.nom &&
        e1?.prix == e2?.prix &&
        e1?.categorie == e2?.categorie &&
        e1?.photo == e2?.photo;
  }

  @override
  int hash(ParadisJardiniersRecord? e) =>
      const ListEquality().hash([e?.nom, e?.prix, e?.categorie, e?.photo]);

  @override
  bool isValidKey(Object? o) => o is ParadisJardiniersRecord;
}
