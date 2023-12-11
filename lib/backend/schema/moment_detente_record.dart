import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MomentDetenteRecord extends FirestoreRecord {
  MomentDetenteRecord._(
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
      FirebaseFirestore.instance.collection('moment_detente');

  static Stream<MomentDetenteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MomentDetenteRecord.fromSnapshot(s));

  static Future<MomentDetenteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MomentDetenteRecord.fromSnapshot(s));

  static MomentDetenteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MomentDetenteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MomentDetenteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MomentDetenteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MomentDetenteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MomentDetenteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMomentDetenteRecordData({
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

class MomentDetenteRecordDocumentEquality
    implements Equality<MomentDetenteRecord> {
  const MomentDetenteRecordDocumentEquality();

  @override
  bool equals(MomentDetenteRecord? e1, MomentDetenteRecord? e2) {
    return e1?.nom == e2?.nom &&
        e1?.prix == e2?.prix &&
        e1?.categorie == e2?.categorie &&
        e1?.photo == e2?.photo;
  }

  @override
  int hash(MomentDetenteRecord? e) =>
      const ListEquality().hash([e?.nom, e?.prix, e?.categorie, e?.photo]);

  @override
  bool isValidKey(Object? o) => o is MomentDetenteRecord;
}
