import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'password_generator_popup_widget.dart' show PasswordGeneratorPopupWidget;
import 'package:flutter/material.dart';

class PasswordGeneratorPopupModel
    extends FlutterFlowModel<PasswordGeneratorPopupWidget> {
  ///  Local state fields for this component.

  String password = 'password';

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (passwordGenerator)] action in Button widget.
  ApiCallResponse? generatedPassword;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
