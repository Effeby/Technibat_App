import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VilleLivraisonRecord extends FirestoreRecord {
  VilleLivraisonRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  bool hasNom() => _nom != null;

  void _initializeFields() {
    _nom = snapshotData['nom'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ville_livraison');

  static Stream<VilleLivraisonRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VilleLivraisonRecord.fromSnapshot(s));

  static Future<VilleLivraisonRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VilleLivraisonRecord.fromSnapshot(s));

  static VilleLivraisonRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VilleLivraisonRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VilleLivraisonRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VilleLivraisonRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VilleLivraisonRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VilleLivraisonRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVilleLivraisonRecordData({
  String? nom,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nom': nom,
    }.withoutNulls,
  );

  return firestoreData;
}

class VilleLivraisonRecordDocumentEquality
    implements Equality<VilleLivraisonRecord> {
  const VilleLivraisonRecordDocumentEquality();

  @override
  bool equals(VilleLivraisonRecord? e1, VilleLivraisonRecord? e2) {
    return e1?.nom == e2?.nom;
  }

  @override
  int hash(VilleLivraisonRecord? e) => const ListEquality().hash([e?.nom]);

  @override
  bool isValidKey(Object? o) => o is VilleLivraisonRecord;
}
