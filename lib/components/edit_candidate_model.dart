import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_candidate_widget.dart' show EditCandidateWidget;
import 'package:flutter/material.dart';

class EditCandidateModel extends FlutterFlowModel<EditCandidateWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode1;
  TextEditingController? yourNameTextController1;
  String? Function(BuildContext, String?)? yourNameTextController1Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode2;
  TextEditingController? yourNameTextController2;
  String? Function(BuildContext, String?)? yourNameTextController2Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode3;
  TextEditingController? yourNameTextController3;
  String? Function(BuildContext, String?)? yourNameTextController3Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode4;
  TextEditingController? yourNameTextController4;
  String? Function(BuildContext, String?)? yourNameTextController4Validator;
  // State field(s) for cvLink widget.
  FocusNode? cvLinkFocusNode;
  TextEditingController? cvLinkTextController;
  String? Function(BuildContext, String?)? cvLinkTextControllerValidator;
  // State field(s) for videoLink widget.
  FocusNode? videoLinkFocusNode;
  TextEditingController? videoLinkTextController;
  String? Function(BuildContext, String?)? videoLinkTextControllerValidator;
  // State field(s) for Workplace widget.
  String? workplaceValue;
  FormFieldController<String>? workplaceValueController;
  // State field(s) for Rate widget.
  FocusNode? rateFocusNode;
  TextEditingController? rateTextController;
  String? Function(BuildContext, String?)? rateTextControllerValidator;
  // State field(s) for JobType widget.
  String? jobTypeValue;
  FormFieldController<String>? jobTypeValueController;
  // Stores action output result for [Bottom Sheet - JobRolesList] action in Container widget.
  JobRolesRecord? selectecJobRole;
  // Stores action output result for [Bottom Sheet - ClientsList] action in Container widget.
  ClientsRecord? clientSelected;
  // State field(s) for Status widget.
  String? statusValue;
  FormFieldController<String>? statusValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode1?.dispose();
    yourNameTextController1?.dispose();

    yourNameFocusNode2?.dispose();
    yourNameTextController2?.dispose();

    yourNameFocusNode3?.dispose();
    yourNameTextController3?.dispose();

    yourNameFocusNode4?.dispose();
    yourNameTextController4?.dispose();

    cvLinkFocusNode?.dispose();
    cvLinkTextController?.dispose();

    videoLinkFocusNode?.dispose();
    videoLinkTextController?.dispose();

    rateFocusNode?.dispose();
    rateTextController?.dispose();
  }
}
