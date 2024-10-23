import 'package:flutter/material.dart';

class LogoutConfirmationDialog extends StatelessWidget {
  final Function onLogoutConfirmed;

  const LogoutConfirmationDialog({Key? key, required this.onLogoutConfirmed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: const Text(
        'Log out',
        textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),),
      content: const Text(
        'Are you sure you want to logout? You\'ll need to login again to use the app.',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Container(
              width: 125,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blue),
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: const Text(
                  'Cancel',
                  style: TextStyle(color: Colors.blue),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),

            Container(
              width: 125,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Logout'),
                onPressed: () {
                  Navigator.of(context).pop();
                  onLogoutConfirmed();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
