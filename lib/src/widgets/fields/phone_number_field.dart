import 'package:flutter/material.dart';
import 'package:rave_flutter/src/common/strings.dart';
import 'package:rave_flutter/src/common/validator_utills.dart';
import 'package:rave_flutter/src/widgets/fields/base_field.dart';

class PhoneNumberField extends BaseTextField {
  PhoneNumberField({
    @required FormFieldSetter<String> onSaved,
    FocusNode focusNode,
    TextInputAction textInputAction,
    ValueChanged<String> onFieldSubmitted,
  }) : super(
          labelText: 'PHONE NUMBER',
          hintText: '123456789',
          onSaved: onSaved,
          focusNode: focusNode,
          onFieldSubmitted: onFieldSubmitted,
          textInputAction: textInputAction,
          validator: (String value) => validatePhoneNum(value),
        );

  static String validatePhoneNum(String input) {
    return ValidatorUtils.isPhoneValid(input) ? null : Strings.invalidPhoneNumber;
  }
}
