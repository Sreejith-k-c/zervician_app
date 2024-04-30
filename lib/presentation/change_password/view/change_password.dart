import 'package:flutter/material.dart';
import '../../../core/constants/color/color_constants.dart';
import '../../../global_widget/global_appbar.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool _hideCurrentPassword = true;
  bool _hideNewPassword = true;
  bool _hideConfirmPassword = true;

  void _toggleCurrentPasswordVisibility() {
    setState(() {
      _hideCurrentPassword = !_hideCurrentPassword;
    });
  }

  void _toggleNewPasswordVisibility() {
    setState(() {
      _hideNewPassword = !_hideNewPassword;
    });
  }

  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _hideConfirmPassword = !_hideConfirmPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GLAppBar(
        title: "Change Password",
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.chevron_left_rounded)),
              actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit,
              color: ColorTheme.mainClr,
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPasswordField(
              labelText: "Current Password",
              hintText: "Enter Current Password",
              obscureText: _hideCurrentPassword,
              onPressed: _toggleCurrentPasswordVisibility,
            ),
            _buildPasswordField(
              labelText: "New Password",
              hintText: "Enter New Password",
              obscureText: _hideNewPassword,
              onPressed: _toggleNewPasswordVisibility,
            ),
            _buildPasswordField(
              labelText: "Confirm Password",
              hintText: "Confirm Password",
              obscureText: _hideConfirmPassword,
              onPressed: _toggleConfirmPasswordVisibility,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPasswordField({
    required String labelText,
    required String hintText,
    required bool obscureText,
    required VoidCallback onPressed,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            labelText,
            textAlign: TextAlign.start,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: hintText,
                        border: InputBorder.none,
                      ),
                      obscureText: obscureText,
                    ),
                  ),
                  IconButton(
                    onPressed: onPressed,
                    icon: Icon(
                      obscureText ? Icons.visibility_off : Icons.visibility,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
