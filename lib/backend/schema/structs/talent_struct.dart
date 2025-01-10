// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TalentStruct extends FFFirebaseStruct {
  TalentStruct({
    int? id,
    String? email,
    String? cvlink,
    String? status,
    DateTime? dateend,
    String? jobtype,
    int? clientid,
    String? lastname,
    DateTime? datestart,
    String? firstname,
    String? videolink,
    String? workplace,
    String? projectname,
    String? rateperhour,
    String? profilephoto,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _email = email,
        _cvlink = cvlink,
        _status = status,
        _dateend = dateend,
        _jobtype = jobtype,
        _clientid = clientid,
        _lastname = lastname,
        _datestart = datestart,
        _firstname = firstname,
        _videolink = videolink,
        _workplace = workplace,
        _projectname = projectname,
        _rateperhour = rateperhour,
        _profilephoto = profilephoto,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "cvlink" field.
  String? _cvlink;
  String get cvlink => _cvlink ?? '';
  set cvlink(String? val) => _cvlink = val;

  bool hasCvlink() => _cvlink != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "dateend" field.
  DateTime? _dateend;
  DateTime? get dateend => _dateend;
  set dateend(DateTime? val) => _dateend = val;

  bool hasDateend() => _dateend != null;

  // "jobtype" field.
  String? _jobtype;
  String get jobtype => _jobtype ?? '';
  set jobtype(String? val) => _jobtype = val;

  bool hasJobtype() => _jobtype != null;

  // "clientid" field.
  int? _clientid;
  int get clientid => _clientid ?? 0;
  set clientid(int? val) => _clientid = val;

  void incrementClientid(int amount) => clientid = clientid + amount;

  bool hasClientid() => _clientid != null;

  // "lastname" field.
  String? _lastname;
  String get lastname => _lastname ?? '';
  set lastname(String? val) => _lastname = val;

  bool hasLastname() => _lastname != null;

  // "datestart" field.
  DateTime? _datestart;
  DateTime? get datestart => _datestart;
  set datestart(DateTime? val) => _datestart = val;

  bool hasDatestart() => _datestart != null;

  // "firstname" field.
  String? _firstname;
  String get firstname => _firstname ?? '';
  set firstname(String? val) => _firstname = val;

  bool hasFirstname() => _firstname != null;

  // "videolink" field.
  String? _videolink;
  String get videolink => _videolink ?? '';
  set videolink(String? val) => _videolink = val;

  bool hasVideolink() => _videolink != null;

  // "workplace" field.
  String? _workplace;
  String get workplace => _workplace ?? '';
  set workplace(String? val) => _workplace = val;

  bool hasWorkplace() => _workplace != null;

  // "projectname" field.
  String? _projectname;
  String get projectname => _projectname ?? '';
  set projectname(String? val) => _projectname = val;

  bool hasProjectname() => _projectname != null;

  // "rateperhour" field.
  String? _rateperhour;
  String get rateperhour => _rateperhour ?? '';
  set rateperhour(String? val) => _rateperhour = val;

  bool hasRateperhour() => _rateperhour != null;

  // "profilephoto" field.
  String? _profilephoto;
  String get profilephoto => _profilephoto ?? '';
  set profilephoto(String? val) => _profilephoto = val;

  bool hasProfilephoto() => _profilephoto != null;

  static TalentStruct fromMap(Map<String, dynamic> data) => TalentStruct(
        id: castToType<int>(data['id']),
        email: data['email'] as String?,
        cvlink: data['cvlink'] as String?,
        status: data['status'] as String?,
        dateend: data['dateend'] as DateTime?,
        jobtype: data['jobtype'] as String?,
        clientid: castToType<int>(data['clientid']),
        lastname: data['lastname'] as String?,
        datestart: data['datestart'] as DateTime?,
        firstname: data['firstname'] as String?,
        videolink: data['videolink'] as String?,
        workplace: data['workplace'] as String?,
        projectname: data['projectname'] as String?,
        rateperhour: data['rateperhour'] as String?,
        profilephoto: data['profilephoto'] as String?,
      );

  static TalentStruct? maybeFromMap(dynamic data) =>
      data is Map ? TalentStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'email': _email,
        'cvlink': _cvlink,
        'status': _status,
        'dateend': _dateend,
        'jobtype': _jobtype,
        'clientid': _clientid,
        'lastname': _lastname,
        'datestart': _datestart,
        'firstname': _firstname,
        'videolink': _videolink,
        'workplace': _workplace,
        'projectname': _projectname,
        'rateperhour': _rateperhour,
        'profilephoto': _profilephoto,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'cvlink': serializeParam(
          _cvlink,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'dateend': serializeParam(
          _dateend,
          ParamType.DateTime,
        ),
        'jobtype': serializeParam(
          _jobtype,
          ParamType.String,
        ),
        'clientid': serializeParam(
          _clientid,
          ParamType.int,
        ),
        'lastname': serializeParam(
          _lastname,
          ParamType.String,
        ),
        'datestart': serializeParam(
          _datestart,
          ParamType.DateTime,
        ),
        'firstname': serializeParam(
          _firstname,
          ParamType.String,
        ),
        'videolink': serializeParam(
          _videolink,
          ParamType.String,
        ),
        'workplace': serializeParam(
          _workplace,
          ParamType.String,
        ),
        'projectname': serializeParam(
          _projectname,
          ParamType.String,
        ),
        'rateperhour': serializeParam(
          _rateperhour,
          ParamType.String,
        ),
        'profilephoto': serializeParam(
          _profilephoto,
          ParamType.String,
        ),
      }.withoutNulls;

  static TalentStruct fromSerializableMap(Map<String, dynamic> data) =>
      TalentStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        cvlink: deserializeParam(
          data['cvlink'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        dateend: deserializeParam(
          data['dateend'],
          ParamType.DateTime,
          false,
        ),
        jobtype: deserializeParam(
          data['jobtype'],
          ParamType.String,
          false,
        ),
        clientid: deserializeParam(
          data['clientid'],
          ParamType.int,
          false,
        ),
        lastname: deserializeParam(
          data['lastname'],
          ParamType.String,
          false,
        ),
        datestart: deserializeParam(
          data['datestart'],
          ParamType.DateTime,
          false,
        ),
        firstname: deserializeParam(
          data['firstname'],
          ParamType.String,
          false,
        ),
        videolink: deserializeParam(
          data['videolink'],
          ParamType.String,
          false,
        ),
        workplace: deserializeParam(
          data['workplace'],
          ParamType.String,
          false,
        ),
        projectname: deserializeParam(
          data['projectname'],
          ParamType.String,
          false,
        ),
        rateperhour: deserializeParam(
          data['rateperhour'],
          ParamType.String,
          false,
        ),
        profilephoto: deserializeParam(
          data['profilephoto'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TalentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TalentStruct &&
        id == other.id &&
        email == other.email &&
        cvlink == other.cvlink &&
        status == other.status &&
        dateend == other.dateend &&
        jobtype == other.jobtype &&
        clientid == other.clientid &&
        lastname == other.lastname &&
        datestart == other.datestart &&
        firstname == other.firstname &&
        videolink == other.videolink &&
        workplace == other.workplace &&
        projectname == other.projectname &&
        rateperhour == other.rateperhour &&
        profilephoto == other.profilephoto;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        email,
        cvlink,
        status,
        dateend,
        jobtype,
        clientid,
        lastname,
        datestart,
        firstname,
        videolink,
        workplace,
        projectname,
        rateperhour,
        profilephoto
      ]);
}

TalentStruct createTalentStruct({
  int? id,
  String? email,
  String? cvlink,
  String? status,
  DateTime? dateend,
  String? jobtype,
  int? clientid,
  String? lastname,
  DateTime? datestart,
  String? firstname,
  String? videolink,
  String? workplace,
  String? projectname,
  String? rateperhour,
  String? profilephoto,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TalentStruct(
      id: id,
      email: email,
      cvlink: cvlink,
      status: status,
      dateend: dateend,
      jobtype: jobtype,
      clientid: clientid,
      lastname: lastname,
      datestart: datestart,
      firstname: firstname,
      videolink: videolink,
      workplace: workplace,
      projectname: projectname,
      rateperhour: rateperhour,
      profilephoto: profilephoto,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TalentStruct? updateTalentStruct(
  TalentStruct? talent, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    talent
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTalentStructData(
  Map<String, dynamic> firestoreData,
  TalentStruct? talent,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (talent == null) {
    return;
  }
  if (talent.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && talent.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final talentData = getTalentFirestoreData(talent, forFieldValue);
  final nestedData = talentData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = talent.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTalentFirestoreData(
  TalentStruct? talent, [
  bool forFieldValue = false,
]) {
  if (talent == null) {
    return {};
  }
  final firestoreData = mapToFirestore(talent.toMap());

  // Add any Firestore field values
  talent.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTalentListFirestoreData(
  List<TalentStruct>? talents,
) =>
    talents?.map((e) => getTalentFirestoreData(e, true)).toList() ?? [];
