import 'package:flutter/material.dart';

class LogoutConfirmationDialog extends StatelessWidget {
  final Function onLogoutConfirmed;

  const LogoutConfirmationDialog({Key? key, required this.onLogoutConfirmed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Log out',
        textAlign: TextAlign.center, // Center the title
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),),
      content: const Text(
        'Are you sure you want to logout? You\'ll need to login again to use the app.',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey,
        ),// Center the content
      ),
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space between buttons
          children: [
            // Cancel button
            Container(
              width: 125,
              height: 40,// Set a fixed width for the button
              decoration: BoxDecoration(
                color: Colors.white, // White background
                borderRadius: BorderRadius.circular(12), // Rounded corners
                border: Border.all(color: Colors.blue), // Blue border
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero, // Remove padding for a full button
                ),
                child: const Text(
                  'Cancel',
                  style: TextStyle(color: Colors.blue), // Black text
                ),
                onPressed: () {
                  Navigator.of(context).pop(); // Dismiss the dialog
                },
              ),
            ),
            // Logout button
            Container(
              width: 125,
              height: 40,// Set a fixed width for the button
              decoration: BoxDecoration(
                color: Colors.blue, // Blue background
                borderRadius: BorderRadius.circular(12), // Rounded corners
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero, // Remove padding for a full button
                  foregroundColor: Colors.white, // White text
                ),
                child: const Text('Logout'),
                onPressed: () {
                  Navigator.of(context).pop(); // Dismiss the dialog
                  onLogoutConfirmed(); // Call the logout function
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
