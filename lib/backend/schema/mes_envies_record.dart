import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MesEnviesRecord extends FirestoreRecord {
  MesEnviesRecord._(
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

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  void _initializeFields() {
    _nomArticle = snapshotData['nomArticle'] as String?;
    _prix = snapshotData['prix'] as String?;
    _photo = snapshotData['photo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mesEnvies');

  static Stream<MesEnviesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MesEnviesRecord.fromSnapshot(s));

  static Future<MesEnviesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MesEnviesRecord.fromSnapshot(s));

  static MesEnviesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MesEnviesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MesEnviesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MesEnviesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MesEnviesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MesEnviesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMesEnviesRecordData({
  String? nomArticle,
  String? prix,
  String? photo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomArticle': nomArticle,
      'prix': prix,
      'photo': photo,
    }.withoutNulls,
  );

  return firestoreData;
}

class MesEnviesRecordDocumentEquality implements Equality<MesEnviesRecord> {
  const MesEnviesRecordDocumentEquality();

  @override
  bool equals(MesEnviesRecord? e1, MesEnviesRecord? e2) {
    return e1?.nomArticle == e2?.nomArticle &&
        e1?.prix == e2?.prix &&
        e1?.photo == e2?.photo;
  }

  @override
  int hash(MesEnviesRecord? e) =>
      const ListEquality().hash([e?.nomArticle, e?.prix, e?.photo]);

  @override
  bool isValidKey(Object? o) => o is MesEnviesRecord;
}
