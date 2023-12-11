import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommuneLivraisonRecord extends FirestoreRecord {
  CommuneLivraisonRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomVille" field.
  String? _nomVille;
  String get nomVille => _nomVille ?? '';
  bool hasNomVille() => _nomVille != null;

  // "nomCommune" field.
  String? _nomCommune;
  String get nomCommune => _nomCommune ?? '';
  bool hasNomCommune() => _nomCommune != null;

  void _initializeFields() {
    _nomVille = snapshotData['nomVille'] as String?;
    _nomCommune = snapshotData['nomCommune'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('commune_livraison');

  static Stream<CommuneLivraisonRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommuneLivraisonRecord.fromSnapshot(s));

  static Future<CommuneLivraisonRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CommuneLivraisonRecord.fromSnapshot(s));

  static CommuneLivraisonRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommuneLivraisonRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommuneLivraisonRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommuneLivraisonRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommuneLivraisonRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommuneLivraisonRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommuneLivraisonRecordData({
  String? nomVille,
  String? nomCommune,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomVille': nomVille,
      'nomCommune': nomCommune,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommuneLivraisonRecordDocumentEquality
    implements Equality<CommuneLivraisonRecord> {
  const CommuneLivraisonRecordDocumentEquality();

  @override
  bool equals(CommuneLivraisonRecord? e1, CommuneLivraisonRecord? e2) {
    return e1?.nomVille == e2?.nomVille && e1?.nomCommune == e2?.nomCommune;
  }

  @override
  int hash(CommuneLivraisonRecord? e) =>
      const ListEquality().hash([e?.nomVille, e?.nomCommune]);

  @override
  bool isValidKey(Object? o) => o is CommuneLivraisonRecord;
}
