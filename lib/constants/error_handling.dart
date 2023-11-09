import 'dart:convert';

import 'package:drop_ship/features/messages/messages.dart';
import 'package:floating_snackbar/floating_snackbar.dart';
import 'package:http/http.dart' as http;
import 'package:drop_ship/constants/utils.dart';
import 'package:flutter/material.dart';

void httpErrorHandle({
  required http.Response response,
  required BuildContext context,
  required VoidCallback onSuccess,
}) {
  switch (response.statusCode) {
    case 200:
      onSuccess();
      break;
    case 400:
      FloatingSnackBar(
          context: context, message: jsonDecode(response.body)['msg']);
      break;
    case 500:
      FloatingSnackBar(
          context: context, message: jsonDecode(response.body)['error']);
      break;
    default:
      FloatingSnackBar(context: context, message: response.body);
  }
}
