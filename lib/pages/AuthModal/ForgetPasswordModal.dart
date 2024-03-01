import 'package:bookspell/components/CustomButton/CustomButton.dart';
import 'package:bookspell/components/FormTextField.dart';
import 'package:bookspell/components/Modal/FormModal.dart';
import 'package:bookspell/components/Modal/DialogModal.dart';
import 'package:bookspell/shared/functions/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ForgotPasswordFormComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormTextField(
            label: 'Email',
            icon: FeatherIcons.mail,
            validator: (String? value) {
              if (isEmptyInput(value)) {
                return 'Por favor preencha esse campo';
              }
              if (!isValidEmail(value)) {
                return 'Entre com um email válido';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}

openForgotPasswordModal(context) {
  handleSubmit() {
    openSuccessModal(context);
  }

  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return FormModalComponent(
        title: 'Esqueceu a senha',
        subTitle: 'Insira seu email para poder redefinir a senha!',
        form: ForgotPasswordFormComponent(),
        button: CustomButton(
          content: 'Enviar',
          onPressed: handleSubmit,
          noPadding: true,
        ),
      );
    },
  );
}

openSuccessModal(context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return DialogModalComponent(
        title: 'Email enviado',
        subTitle: 'Confira seu email com instruções para redefinir sua senha',
      );
    },
  );
}
