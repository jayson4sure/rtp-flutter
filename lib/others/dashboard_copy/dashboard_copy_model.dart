import '/flutter_flow/flutter_flow_util.dart';
import '/others/side_nav/side_nav_widget.dart';
import 'dashboard_copy_widget.dart' show DashboardCopyWidget;
import 'package:flutter/material.dart';

class DashboardCopyModel extends FlutterFlowModel<DashboardCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SideNav component.
  late SideNavModel sideNavModel;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
  }
}
