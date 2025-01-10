import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TalentsRecord extends FirestoreRecord {
  TalentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "firstname" field.
  String? _firstname;
  String get firstname => _firstname ?? '';
  bool hasFirstname() => _firstname != null;

  // "lastname" field.
  String? _lastname;
  String get lastname => _lastname ?? '';
  bool hasLastname() => _lastname != null;

  // "jobtype" field.
  String? _jobtype;
  String get jobtype => _jobtype ?? '';
  bool hasJobtype() => _jobtype != null;

  // "workplace" field.
  String? _workplace;
  String get workplace => _workplace ?? '';
  bool hasWorkplace() => _workplace != null;

  // "date_start" field.
  DateTime? _dateStart;
  DateTime? get dateStart => _dateStart;
  bool hasDateStart() => _dateStart != null;

  // "date_end" field.
  DateTime? _dateEnd;
  DateTime? get dateEnd => _dateEnd;
  bool hasDateEnd() => _dateEnd != null;

  // "project_name" field.
  String? _projectName;
  String get projectName => _projectName ?? '';
  bool hasProjectName() => _projectName != null;

  // "rate_per_hour" field.
  double? _ratePerHour;
  double get ratePerHour => _ratePerHour ?? 0.0;
  bool hasRatePerHour() => _ratePerHour != null;

  // "client_ref" field.
  DocumentReference? _clientRef;
  DocumentReference? get clientRef => _clientRef;
  bool hasClientRef() => _clientRef != null;

  // "job_role_ref" field.
  DocumentReference? _jobRoleRef;
  DocumentReference? get jobRoleRef => _jobRoleRef;
  bool hasJobRoleRef() => _jobRoleRef != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "cv_link" field.
  String? _cvLink;
  String get cvLink => _cvLink ?? '';
  bool hasCvLink() => _cvLink != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "video_link" field.
  String? _videoLink;
  String get videoLink => _videoLink ?? '';
  bool hasVideoLink() => _videoLink != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _updatedAt = snapshotData['updated_at'] as DateTime?;
    _firstname = snapshotData['firstname'] as String?;
    _lastname = snapshotData['lastname'] as String?;
    _jobtype = snapshotData['jobtype'] as String?;
    _workplace = snapshotData['workplace'] as String?;
    _dateStart = snapshotData['date_start'] as DateTime?;
    _dateEnd = snapshotData['date_end'] as DateTime?;
    _projectName = snapshotData['project_name'] as String?;
    _ratePerHour = castToType<double>(snapshotData['rate_per_hour']);
    _clientRef = snapshotData['client_ref'] as DocumentReference?;
    _jobRoleRef = snapshotData['job_role_ref'] as DocumentReference?;
    _status = snapshotData['status'] as String?;
    _phone = snapshotData['phone'] as String?;
    _email = snapshotData['email'] as String?;
    _cvLink = snapshotData['cv_link'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _videoLink = snapshotData['video_link'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('talents');

  static Stream<TalentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TalentsRecord.fromSnapshot(s));

  static Future<TalentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TalentsRecord.fromSnapshot(s));

  static TalentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TalentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TalentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TalentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TalentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TalentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTalentsRecordData({
  DateTime? createdAt,
  DateTime? updatedAt,
  String? firstname,
  String? lastname,
  String? jobtype,
  String? workplace,
  DateTime? dateStart,
  DateTime? dateEnd,
  String? projectName,
  double? ratePerHour,
  DocumentReference? clientRef,
  DocumentReference? jobRoleRef,
  String? status,
  String? phone,
  String? email,
  String? cvLink,
  String? photoUrl,
  String? videoLink,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'updated_at': updatedAt,
      'firstname': firstname,
      'lastname': lastname,
      'jobtype': jobtype,
      'workplace': workplace,
      'date_start': dateStart,
      'date_end': dateEnd,
      'project_name': projectName,
      'rate_per_hour': ratePerHour,
      'client_ref': clientRef,
      'job_role_ref': jobRoleRef,
      'status': status,
      'phone': phone,
      'email': email,
      'cv_link': cvLink,
      'photo_url': photoUrl,
      'video_link': videoLink,
    }.withoutNulls,
  );

  return firestoreData;
}

class TalentsRecordDocumentEquality implements Equality<TalentsRecord> {
  const TalentsRecordDocumentEquality();

  @override
  bool equals(TalentsRecord? e1, TalentsRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.firstname == e2?.firstname &&
        e1?.lastname == e2?.lastname &&
        e1?.jobtype == e2?.jobtype &&
        e1?.workplace == e2?.workplace &&
        e1?.dateStart == e2?.dateStart &&
        e1?.dateEnd == e2?.dateEnd &&
        e1?.projectName == e2?.projectName &&
        e1?.ratePerHour == e2?.ratePerHour &&
        e1?.clientRef == e2?.clientRef &&
        e1?.jobRoleRef == e2?.jobRoleRef &&
        e1?.status == e2?.status &&
        e1?.phone == e2?.phone &&
        e1?.email == e2?.email &&
        e1?.cvLink == e2?.cvLink &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.videoLink == e2?.videoLink;
  }

  @override
  int hash(TalentsRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.updatedAt,
        e?.firstname,
        e?.lastname,
        e?.jobtype,
        e?.workplace,
        e?.dateStart,
        e?.dateEnd,
        e?.projectName,
        e?.ratePerHour,
        e?.clientRef,
        e?.jobRoleRef,
        e?.status,
        e?.phone,
        e?.email,
        e?.cvLink,
        e?.photoUrl,
        e?.videoLink
      ]);

  @override
  bool isValidKey(Object? o) => o is TalentsRecord;
}
