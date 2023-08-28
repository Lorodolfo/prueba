import 'package:flutter/material.dart';
import 'package:prueba2/src/pages/user_profile/account/account_options/alerts.dart';
import 'package:prueba2/src/pages/user_profile/account/account_options/payment_methods/payment_methods.dart';
import 'package:prueba2/src/pages/user_profile/account/account_options/personal_info.dart';
import 'package:prueba2/src/pages/user_profile/account/my_account_card.dart';
import 'package:prueba2/src/utils/my_account_lists/my_accounts_lists.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    PreferencesTitle preferencesTitle = PreferencesTitle();
    PreferencesIcons preferencesIcons = PreferencesIcons();
    PreferencesData preferencesData = PreferencesData();
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 30, bottom: 14.0),
                child: const Text(
                  "Tus preferencias y ajustes",
                  style: TextStyle(
                    color: Color(0xFF1F1B2D),
                    fontSize: 16,
                    fontFamily: "Noto Sans",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          ListView.builder(
            itemCount: preferencesTitle.preferencesTitle.length,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  if (index == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PersonalInfo(),
                      ),
                    );
                  } else if (index == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Alerts(),
                      ),
                    );
                  }
                  if (index == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PaymentMethods(),
                      ),
                    );
                  }
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 14.0,
                  ),
                  child: MyAccountCard(
                    titulo: preferencesTitle.preferencesTitle[index],
                    data: preferencesData.preferencesData[index],
                    icono: preferencesIcons.preferencesIcons[index],
                  ),
                ),
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            width: 324,
            height: 76,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '¿Necesitas desactivar tu cuenta?\n\n',
                    style: TextStyle(
                      color: Color(0xFF443F56),
                      fontSize: 14,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w400,
                      //height: 14,
                    ),
                  ),
                  TextSpan(
                    text: '¡Encárgate de eso ahora!',
                    style: TextStyle(
                      color: Color(0xFFFF552B),
                      fontSize: 14,
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w700,
                      //height: 14,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
