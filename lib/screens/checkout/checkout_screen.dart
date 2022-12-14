import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class CheckoutScreen extends StatelessWidget {
  static const String routeName = "/checkout";

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => const CheckoutScreen());
  }

  const CheckoutScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController addressController = TextEditingController();
    final TextEditingController cityController = TextEditingController();
    final TextEditingController countryController = TextEditingController();
    final TextEditingController zipCodeController = TextEditingController();

    return Scaffold(
      appBar: const CustomAppBar(title: 'Checkout'),
      bottomNavigationBar: const CustomNavBar(screen: routeName),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("CUSTOMER INFORMATION",
              style: Theme.of(context).textTheme.headline3),
              _buildTextFormField(emailController, context, "Email"),
              _buildTextFormField(nameController, context, "Full Name"),
          Text("DELIVERY INFORMATION",
              style: Theme.of(context).textTheme.headline3),
              _buildTextFormField(addressController, context, "Address"),
              _buildTextFormField(cityController, context, "City"),
              _buildTextFormField(countryController, context, "Country"),
              _buildTextFormField(zipCodeController, context, "Zip Code"),
          Text("ORDER INFORMATION",
              style: Theme.of(context).textTheme.headline3),
        ],
      ),
    );
  }

  Padding _buildTextFormField(
    TextEditingController controller,
    BuildContext context,
    String labelText,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: 75,
            child:
                Text(labelText, style: Theme.of(context).textTheme.bodyText1),
          ),
          Expanded(
            child: TextFormField(
              controller: controller,
              decoration: const InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.only(left: 10),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
