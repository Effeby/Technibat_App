import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategorieRecord extends FirestoreRecord {
  CategorieRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomCategorie" field.
  String? _nomCategorie;
  String get nomCategorie => _nomCategorie ?? '';
  bool hasNomCategorie() => _nomCategorie != null;

  void _initializeFields() {
    _nomCategorie = snapshotData['nomCategorie'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('categorie');

  static Stream<CategorieRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategorieRecord.fromSnapshot(s));

  static Future<CategorieRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategorieRecord.fromSnapshot(s));

  static CategorieRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategorieRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategorieRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategorieRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategorieRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategorieRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategorieRecordData({
  String? nomCategorie,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomCategorie': nomCategorie,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategorieRecordDocumentEquality implements Equality<CategorieRecord> {
  const CategorieRecordDocumentEquality();

  @override
  bool equals(CategorieRecord? e1, CategorieRecord? e2) {
    return e1?.nomCategorie == e2?.nomCategorie;
  }

  @override
  int hash(CategorieRecord? e) => const ListEquality().hash([e?.nomCategorie]);

  @override
  bool isValidKey(Object? o) => o is CategorieRecord;
}
