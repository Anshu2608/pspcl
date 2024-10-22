import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pspcl/home_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'logout_confirmation_dialog.dart'; // Import the logout confirmation dialog

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? _image; // Variable to hold the selected image

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path); // Update the image file
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.blue),
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => HomeScreen()),
                  (Route<dynamic> route) => false,
            );
          },
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/images/layout.svg', // Replace with your SVG asset path
              color: Colors.blue,
              width: 30,
              height: 24,
            ),
            onPressed: () {
              // Implement image functionality
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0), // Add padding to left and right
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Profile Image with Edit Option
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Stack(
                  children: [
                    Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: _image == null
                              ? const NetworkImage('https://via.placeholder.com/150') // Default image
                              : FileImage(_image!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0.1,
                      right: 0.1,
                      child: GestureDetector(
                        onTap: _pickImage, // Open image picker on tap
                        child: SvgPicture.asset(
                          'assets/images/Edit.svg', // Use SvgPicture for SVG
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // User Name
              const SizedBox(height: 5),
              const Text(
                'Anshuman',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.center,
              ),

              // User ID
              const SizedBox(height: 3),
              const Text(
                'AC ID 739393903',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              // Profile Fields
              const SizedBox(height: 10),
              _buildListTile('Account Info', 13.0),
              const Divider(color: Colors.grey),
              _buildListTile('Address', 13.0),
              const Divider(color: Colors.grey),
              _buildListTile('Consumption', 13.0),
              const Divider(color: Colors.grey),
              _buildListTile('Complaint', 13.0),
              const Divider(color: Colors.grey),
              _buildListTile('Notifications', 13.0),
              const Divider(color: Colors.grey),
              _buildListTile('Settings', 13.0),
              const Divider(color: Colors.grey),
              _buildListTile('Logout', 13.0), // Logout ListTile
              const SizedBox(height: 5),
              _buildSocialMediaIcons(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // Updated ListTile method to accept text size
  ListTile _buildListTile(String title, double textSize) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: textSize),
          ),
          const Icon(Icons.arrow_forward_ios, size: 10),
        ],
      ),
      onTap: () {
        if (title == 'Logout') {
          _showLogoutConfirmationDialog();
        } else {
          // Implement navigation for other items
        }
      },
    );
  }

  // Show logout confirmation dialog
  void _showLogoutConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return LogoutConfirmationDialog(
          onLogoutConfirmed: () {
            // Handle the logout logic here
            // e.g., clear user data, navigate to login screen, etc.
          },
        );
      },
    );
  }

  // Method to build social media icons
  Widget _buildSocialMediaIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildSocialMediaIcon(
          iconPath: 'assets/images/insta.svg',
          label: 'Insta',
          onPressed: () {
            // Navigate to Instagram
          },
        ),
        const SizedBox(width: 20),
        _buildSocialMediaIcon(
          iconPath: 'assets/images/facebook.svg',
          label: 'FB/PSPCL',
          onPressed: () {
            // Navigate to Facebook
          },
        ),
        const SizedBox(width: 20),
        _buildSocialMediaIcon(
          iconPath: 'assets/images/twitter_icon.svg',
          label: '@PSPCL',
          onPressed: () {
            // Navigate to Twitter
          },
        ),
        const SizedBox(width: 20),
        _buildSocialMediaIcon(
          iconPath: 'assets/images/phone_icon.svg',
          label: 'Call',
          onPressed: () {
            // Implement call functionality
          },
        ),
      ],
    );
  }

  Widget _buildSocialMediaIcon({
    required String iconPath,
    required String label,
    required VoidCallback onPressed,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 60, // Adjust width for the circular container
          height: 60, // Adjust height for the circular container
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white, // Background color for the circle
            border: Border.all(color: Colors.grey, width: 1), // Grey border
          ),
          child: IconButton(
            icon: SvgPicture.asset(
              iconPath,
              width: 30,
              height: 30,
            ),
            onPressed: onPressed,
          ),
        ),
        const SizedBox(height: 5), // Space between icon and text
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.blue, // Adjust text color as needed
          ),
        ),
      ],
    );
  }

}
