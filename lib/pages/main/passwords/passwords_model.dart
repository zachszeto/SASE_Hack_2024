import '/backend/api_requests/api_calls.dart';
import '/components/navbar/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'passwords_widget.dart' show PasswordsWidget;
import 'package:flutter/material.dart';

class PasswordsModel extends FlutterFlowModel<PasswordsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (passwordGenerator)] action in Button widget.
  ApiCallResponse? initalPassword;
  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
  }
}
