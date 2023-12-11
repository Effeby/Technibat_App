import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParadisBricoleursRecord extends FirestoreRecord {
  ParadisBricoleursRecord._(
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
      FirebaseFirestore.instance.collection('paradis_bricoleurs');

  static Stream<ParadisBricoleursRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ParadisBricoleursRecord.fromSnapshot(s));

  static Future<ParadisBricoleursRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ParadisBricoleursRecord.fromSnapshot(s));

  static ParadisBricoleursRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ParadisBricoleursRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ParadisBricoleursRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ParadisBricoleursRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ParadisBricoleursRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ParadisBricoleursRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createParadisBricoleursRecordData({
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

class ParadisBricoleursRecordDocumentEquality
    implements Equality<ParadisBricoleursRecord> {
  const ParadisBricoleursRecordDocumentEquality();

  @override
  bool equals(ParadisBricoleursRecord? e1, ParadisBricoleursRecord? e2) {
    return e1?.nom == e2?.nom &&
        e1?.prix == e2?.prix &&
        e1?.categorie == e2?.categorie &&
        e1?.photo == e2?.photo;
  }

  @override
  int hash(ParadisBricoleursRecord? e) =>
      const ListEquality().hash([e?.nom, e?.prix, e?.categorie, e?.photo]);

  @override
  bool isValidKey(Object? o) => o is ParadisBricoleursRecord;
}
