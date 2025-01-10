import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CandidatesRecord extends FirestoreRecord {
  CandidatesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "client_ref" field.
  DocumentReference? _clientRef;
  DocumentReference? get clientRef => _clientRef;
  bool hasClientRef() => _clientRef != null;

  // "talent_ref" field.
  DocumentReference? _talentRef;
  DocumentReference? get talentRef => _talentRef;
  bool hasTalentRef() => _talentRef != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "client_id" field.
  String? _clientId;
  String get clientId => _clientId ?? '';
  bool hasClientId() => _clientId != null;

  void _initializeFields() {
    _status = snapshotData['status'] as String?;
    _clientRef = snapshotData['client_ref'] as DocumentReference?;
    _talentRef = snapshotData['talent_ref'] as DocumentReference?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _clientId = snapshotData['client_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('candidates');

  static Stream<CandidatesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CandidatesRecord.fromSnapshot(s));

  static Future<CandidatesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CandidatesRecord.fromSnapshot(s));

  static CandidatesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CandidatesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CandidatesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CandidatesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CandidatesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CandidatesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCandidatesRecordData({
  String? status,
  DocumentReference? clientRef,
  DocumentReference? talentRef,
  DateTime? createdAt,
  String? clientId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'status': status,
      'client_ref': clientRef,
      'talent_ref': talentRef,
      'created_at': createdAt,
      'client_id': clientId,
    }.withoutNulls,
  );

  return firestoreData;
}

class CandidatesRecordDocumentEquality implements Equality<CandidatesRecord> {
  const CandidatesRecordDocumentEquality();

  @override
  bool equals(CandidatesRecord? e1, CandidatesRecord? e2) {
    return e1?.status == e2?.status &&
        e1?.clientRef == e2?.clientRef &&
        e1?.talentRef == e2?.talentRef &&
        e1?.createdAt == e2?.createdAt &&
        e1?.clientId == e2?.clientId;
  }

  @override
  int hash(CandidatesRecord? e) => const ListEquality()
      .hash([e?.status, e?.clientRef, e?.talentRef, e?.createdAt, e?.clientId]);

  @override
  bool isValidKey(Object? o) => o is CandidatesRecord;
}
