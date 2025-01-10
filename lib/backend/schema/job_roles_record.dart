import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobRolesRecord extends FirestoreRecord {
  JobRolesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _status = snapshotData['status'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('job_roles');

  static Stream<JobRolesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobRolesRecord.fromSnapshot(s));

  static Future<JobRolesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobRolesRecord.fromSnapshot(s));

  static JobRolesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JobRolesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobRolesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobRolesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobRolesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobRolesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobRolesRecordData({
  String? name,
  String? status,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'status': status,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobRolesRecordDocumentEquality implements Equality<JobRolesRecord> {
  const JobRolesRecordDocumentEquality();

  @override
  bool equals(JobRolesRecord? e1, JobRolesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.status == e2?.status &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(JobRolesRecord? e) =>
      const ListEquality().hash([e?.name, e?.status, e?.createdAt]);

  @override
  bool isValidKey(Object? o) => o is JobRolesRecord;
}
