import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FraisLivraisonRecord extends FirestoreRecord {
  FraisLivraisonRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ville" field.
  String? _ville;
  String get ville => _ville ?? '';
  bool hasVille() => _ville != null;

  // "tarif" field.
  String? _tarif;
  String get tarif => _tarif ?? '';
  bool hasTarif() => _tarif != null;

  void _initializeFields() {
    _ville = snapshotData['ville'] as String?;
    _tarif = snapshotData['tarif'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('frais_livraison');

  static Stream<FraisLivraisonRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FraisLivraisonRecord.fromSnapshot(s));

  static Future<FraisLivraisonRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FraisLivraisonRecord.fromSnapshot(s));

  static FraisLivraisonRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FraisLivraisonRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FraisLivraisonRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FraisLivraisonRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FraisLivraisonRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FraisLivraisonRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFraisLivraisonRecordData({
  String? ville,
  String? tarif,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ville': ville,
      'tarif': tarif,
    }.withoutNulls,
  );

  return firestoreData;
}

class FraisLivraisonRecordDocumentEquality
    implements Equality<FraisLivraisonRecord> {
  const FraisLivraisonRecordDocumentEquality();

  @override
  bool equals(FraisLivraisonRecord? e1, FraisLivraisonRecord? e2) {
    return e1?.ville == e2?.ville && e1?.tarif == e2?.tarif;
  }

  @override
  int hash(FraisLivraisonRecord? e) =>
      const ListEquality().hash([e?.ville, e?.tarif]);

  @override
  bool isValidKey(Object? o) => o is FraisLivraisonRecord;
}
