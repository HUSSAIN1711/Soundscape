import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SymptomsRecord extends FirestoreRecord {
  SymptomsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "symptoms" field.
  List<String>? _symptoms;
  List<String> get symptoms => _symptoms ?? const [];
  bool hasSymptoms() => _symptoms != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _symptoms = getDataList(snapshotData['symptoms']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('symptoms')
          : FirebaseFirestore.instance.collectionGroup('symptoms');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('symptoms').doc(id);

  static Stream<SymptomsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SymptomsRecord.fromSnapshot(s));

  static Future<SymptomsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SymptomsRecord.fromSnapshot(s));

  static SymptomsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SymptomsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SymptomsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SymptomsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SymptomsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SymptomsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSymptomsRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class SymptomsRecordDocumentEquality implements Equality<SymptomsRecord> {
  const SymptomsRecordDocumentEquality();

  @override
  bool equals(SymptomsRecord? e1, SymptomsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.symptoms, e2?.symptoms);
  }

  @override
  int hash(SymptomsRecord? e) => const ListEquality().hash([e?.symptoms]);

  @override
  bool isValidKey(Object? o) => o is SymptomsRecord;
}
