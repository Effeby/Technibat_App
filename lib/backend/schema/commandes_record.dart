import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommandesRecord extends FirestoreRecord {
  CommandesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomArticle" field.
  String? _nomArticle;
  String get nomArticle => _nomArticle ?? '';
  bool hasNomArticle() => _nomArticle != null;

  // "photoArticle" field.
  String? _photoArticle;
  String get photoArticle => _photoArticle ?? '';
  bool hasPhotoArticle() => _photoArticle != null;

  // "quantite" field.
  String? _quantite;
  String get quantite => _quantite ?? '';
  bool hasQuantite() => _quantite != null;

  // "prix" field.
  String? _prix;
  String get prix => _prix ?? '';
  bool hasPrix() => _prix != null;

  // "montanTotal" field.
  String? _montanTotal;
  String get montanTotal => _montanTotal ?? '';
  bool hasMontanTotal() => _montanTotal != null;

  // "mode_payement" field.
  String? _modePayement;
  String get modePayement => _modePayement ?? '';
  bool hasModePayement() => _modePayement != null;

  // "date_commande" field.
  DateTime? _dateCommande;
  DateTime? get dateCommande => _dateCommande;
  bool hasDateCommande() => _dateCommande != null;

  // "nomClient" field.
  String? _nomClient;
  String get nomClient => _nomClient ?? '';
  bool hasNomClient() => _nomClient != null;

  // "emailClient" field.
  String? _emailClient;
  String get emailClient => _emailClient ?? '';
  bool hasEmailClient() => _emailClient != null;

  // "ville" field.
  String? _ville;
  String get ville => _ville ?? '';
  bool hasVille() => _ville != null;

  // "commune" field.
  String? _commune;
  String get commune => _commune ?? '';
  bool hasCommune() => _commune != null;

  // "localisation" field.
  String? _localisation;
  String get localisation => _localisation ?? '';
  bool hasLocalisation() => _localisation != null;

  void _initializeFields() {
    _nomArticle = snapshotData['nomArticle'] as String?;
    _photoArticle = snapshotData['photoArticle'] as String?;
    _quantite = snapshotData['quantite'] as String?;
    _prix = snapshotData['prix'] as String?;
    _montanTotal = snapshotData['montanTotal'] as String?;
    _modePayement = snapshotData['mode_payement'] as String?;
    _dateCommande = snapshotData['date_commande'] as DateTime?;
    _nomClient = snapshotData['nomClient'] as String?;
    _emailClient = snapshotData['emailClient'] as String?;
    _ville = snapshotData['ville'] as String?;
    _commune = snapshotData['commune'] as String?;
    _localisation = snapshotData['localisation'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('commandes');

  static Stream<CommandesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommandesRecord.fromSnapshot(s));

  static Future<CommandesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommandesRecord.fromSnapshot(s));

  static CommandesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommandesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommandesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommandesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommandesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommandesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommandesRecordData({
  String? nomArticle,
  String? photoArticle,
  String? quantite,
  String? prix,
  String? montanTotal,
  String? modePayement,
  DateTime? dateCommande,
  String? nomClient,
  String? emailClient,
  String? ville,
  String? commune,
  String? localisation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomArticle': nomArticle,
      'photoArticle': photoArticle,
      'quantite': quantite,
      'prix': prix,
      'montanTotal': montanTotal,
      'mode_payement': modePayement,
      'date_commande': dateCommande,
      'nomClient': nomClient,
      'emailClient': emailClient,
      'ville': ville,
      'commune': commune,
      'localisation': localisation,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommandesRecordDocumentEquality implements Equality<CommandesRecord> {
  const CommandesRecordDocumentEquality();

  @override
  bool equals(CommandesRecord? e1, CommandesRecord? e2) {
    return e1?.nomArticle == e2?.nomArticle &&
        e1?.photoArticle == e2?.photoArticle &&
        e1?.quantite == e2?.quantite &&
        e1?.prix == e2?.prix &&
        e1?.montanTotal == e2?.montanTotal &&
        e1?.modePayement == e2?.modePayement &&
        e1?.dateCommande == e2?.dateCommande &&
        e1?.nomClient == e2?.nomClient &&
        e1?.emailClient == e2?.emailClient &&
        e1?.ville == e2?.ville &&
        e1?.commune == e2?.commune &&
        e1?.localisation == e2?.localisation;
  }

  @override
  int hash(CommandesRecord? e) => const ListEquality().hash([
        e?.nomArticle,
        e?.photoArticle,
        e?.quantite,
        e?.prix,
        e?.montanTotal,
        e?.modePayement,
        e?.dateCommande,
        e?.nomClient,
        e?.emailClient,
        e?.ville,
        e?.commune,
        e?.localisation
      ]);

  @override
  bool isValidKey(Object? o) => o is CommandesRecord;
}
