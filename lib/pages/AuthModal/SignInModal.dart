import 'package:bookspell/components/CustomButton/CustomButton.dart';
import 'package:bookspell/components/FormTextField.dart';
import 'package:bookspell/components/Modal/Modal.dart';
import 'package:bookspell/pages/AuthModal/LoginModal.dart';
import 'package:bookspell/shared/constants/appTextStyles.dart';
import 'package:bookspell/shared/functions/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class SignFormCompoent extends StatelessWidget {
  SignFormCompoent({Key? key, required this.signFormKey}) : super(key: key);
  final GlobalKey<FormState> signFormKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      key: signFormKey,
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
                return 'Please enter a valid email';
              }
              return null;
            },
          ),
          FormTextField(
            label: 'Senha',
            icon: FeatherIcons.key,
            validator: (String? value) {
              if (isEmptyInput(value)) {
                return 'Por favor preencha esse campo';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}

openSignModal(context) {
  final GlobalKey<FormState> signFormKey = GlobalKey<FormState>();

  handleSubmit() {
    if (signFormKey.currentState!.validate()) {
      // continue Sign
    }
  }

  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return ModalCompoent(
        title: 'Entre',
        subTitle: 'Para criar sua meta e organizar suas listas de leitura!',
        form: SignFormCompoent(signFormKey: signFormKey),
        link: InkWell(
          child: Text(
            'Não tem cadastro?',
            style: AppTextStyles.smallLink,
          ),
          onTap: () => {Navigator.pop(context), openLoginModal(context)},
        ),
        button: CustomButton(
          content: 'Entrar',
          onPressed: handleSubmit,
          noPadding: true,
        ),
      );
    },
  );
}
