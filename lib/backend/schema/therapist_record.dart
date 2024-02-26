import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TherapistRecord extends FirestoreRecord {
  TherapistRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Patient_name" field.
  String? _patientName;
  String get patientName => _patientName ?? '';
  bool hasPatientName() => _patientName != null;

  // "Patient_age" field.
  int? _patientAge;
  int get patientAge => _patientAge ?? 0;
  bool hasPatientAge() => _patientAge != null;

  // "Patient_gender" field.
  String? _patientGender;
  String get patientGender => _patientGender ?? '';
  bool hasPatientGender() => _patientGender != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _patientName = snapshotData['Patient_name'] as String?;
    _patientAge = castToType<int>(snapshotData['Patient_age']);
    _patientGender = snapshotData['Patient_gender'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('therapist')
          : FirebaseFirestore.instance.collectionGroup('therapist');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('therapist').doc(id);

  static Stream<TherapistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TherapistRecord.fromSnapshot(s));

  static Future<TherapistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TherapistRecord.fromSnapshot(s));

  static TherapistRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TherapistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TherapistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TherapistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TherapistRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TherapistRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTherapistRecordData({
  String? patientName,
  int? patientAge,
  String? patientGender,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Patient_name': patientName,
      'Patient_age': patientAge,
      'Patient_gender': patientGender,
    }.withoutNulls,
  );

  return firestoreData;
}

class TherapistRecordDocumentEquality implements Equality<TherapistRecord> {
  const TherapistRecordDocumentEquality();

  @override
  bool equals(TherapistRecord? e1, TherapistRecord? e2) {
    return e1?.patientName == e2?.patientName &&
        e1?.patientAge == e2?.patientAge &&
        e1?.patientGender == e2?.patientGender;
  }

  @override
  int hash(TherapistRecord? e) => const ListEquality()
      .hash([e?.patientName, e?.patientAge, e?.patientGender]);

  @override
  bool isValidKey(Object? o) => o is TherapistRecord;
}
