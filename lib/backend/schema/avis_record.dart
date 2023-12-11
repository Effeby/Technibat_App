import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AvisRecord extends FirestoreRecord {
  AvisRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomUser" field.
  String? _nomUser;
  String get nomUser => _nomUser ?? '';
  bool hasNomUser() => _nomUser != null;

  // "commentaire" field.
  String? _commentaire;
  String get commentaire => _commentaire ?? '';
  bool hasCommentaire() => _commentaire != null;

  // "noteEtoile" field.
  String? _noteEtoile;
  String get noteEtoile => _noteEtoile ?? '';
  bool hasNoteEtoile() => _noteEtoile != null;

  void _initializeFields() {
    _nomUser = snapshotData['nomUser'] as String?;
    _commentaire = snapshotData['commentaire'] as String?;
    _noteEtoile = snapshotData['noteEtoile'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('avis');

  static Stream<AvisRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AvisRecord.fromSnapshot(s));

  static Future<AvisRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AvisRecord.fromSnapshot(s));

  static AvisRecord fromSnapshot(DocumentSnapshot snapshot) => AvisRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AvisRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AvisRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AvisRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AvisRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAvisRecordData({
  String? nomUser,
  String? commentaire,
  String? noteEtoile,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomUser': nomUser,
      'commentaire': commentaire,
      'noteEtoile': noteEtoile,
    }.withoutNulls,
  );

  return firestoreData;
}

class AvisRecordDocumentEquality implements Equality<AvisRecord> {
  const AvisRecordDocumentEquality();

  @override
  bool equals(AvisRecord? e1, AvisRecord? e2) {
    return e1?.nomUser == e2?.nomUser &&
        e1?.commentaire == e2?.commentaire &&
        e1?.noteEtoile == e2?.noteEtoile;
  }

  @override
  int hash(AvisRecord? e) =>
      const ListEquality().hash([e?.nomUser, e?.commentaire, e?.noteEtoile]);

  @override
  bool isValidKey(Object? o) => o is AvisRecord;
}
