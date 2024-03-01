import 'package:bookspell/components/CustomButton/CustomButton.dart';
import 'package:bookspell/components/FormTextField.dart';
import 'package:bookspell/components/Modal/FormModal.dart';
import 'package:bookspell/pages/AuthModal/LoginModal.dart';
import 'package:bookspell/pages/AuthModal/ForgetPasswordModal.dart';
import 'package:bookspell/shared/constants/appTextStyles.dart';
import 'package:bookspell/shared/functions/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class SignFormComponent extends StatelessWidget {
  SignFormComponent({Key? key, required this.signFormKey}) : super(key: key);
  final GlobalKey<FormState> signFormKey;

  String? emailValidation(String? value) {
    if (isEmptyInput(value)) return 'Por favor preencha esse campo';
    if (!isValidEmail(value)) return 'Coloque um email válido';

    return null;
  }

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
            validator: emailValidation,
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
      return FormModalComponent(
        backLink: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(bottom: 20),
          child: InkWell(
            child: Text(
              'Voltar para cadastro',
              style: AppTextStyles.smallLink,
            ),
            onTap: () => {Navigator.pop(context), openLoginModal(context)},
          ),
        ),
        title: 'Entre',
        subTitle: 'Para criar sua meta e organizar suas listas de leitura!',
        form: SignFormComponent(signFormKey: signFormKey),
        link: InkWell(
          child: Text(
            'Esqueceu a senha?',
            style: AppTextStyles.smallLink,
          ),
          onTap: () =>
              {Navigator.pop(context), openForgotPasswordModal(context)},
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
