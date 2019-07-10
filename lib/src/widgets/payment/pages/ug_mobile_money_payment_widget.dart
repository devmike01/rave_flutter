import 'package:flutter/material.dart';
import 'package:rave_flutter/src/common/rave_pay_initializer.dart';
import 'package:rave_flutter/src/widgets/fields/phone_number_field.dart';
import 'package:rave_flutter/src/widgets/payment/pages/base_payment_page.dart';

class UgMobileMoneyPaymentWidget extends BasePaymentPage {
  UgMobileMoneyPaymentWidget(RavePayInitializer initializer) : super(initializer);

  @override
  _UgMobileMoneyPaymentWidgetState createState() => _UgMobileMoneyPaymentWidgetState();
}

class _UgMobileMoneyPaymentWidgetState
    extends BasePaymentPageState<UgMobileMoneyPaymentWidget> {
  var _phoneFocusNode = FocusNode();

  @override
  void dispose() {
    _phoneFocusNode.dispose();
    super.dispose();
  }

  @override
  List<Widget> buildLocalFields([data]) {
    return [
      PhoneNumberField(
          focusNode: _phoneFocusNode,
          textInputAction: TextInputAction.done,
          hintText: '256xxxxxxxxx',
          onFieldSubmitted: (value) => swapFocus(_phoneFocusNode),
          onSaved: (value) => payload.phoneNumber),
    ];
  }

  @override
  onFormValidated() {
    // TODO: implement onFormValidated
    return null;
  }

  @override
  FocusNode getNextFocusNode() => _phoneFocusNode;

  @override
  bool showEmailField() => false;
}