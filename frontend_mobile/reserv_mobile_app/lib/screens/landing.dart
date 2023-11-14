import 'package:flutter/material.dart';
import 'login.dart'; 
import 'signup.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0E9D3),
      appBar: AppBar(
        title: const Text('Reserv'),
        backgroundColor: const Color(0xFF526760)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Book Your Path to Knowledge: University Room Reservations',
              style: GoogleFonts.openSans(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to the LoginScreen when the "Login" button is pressed.
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF526760), // Button color
                  minimumSize: const Size(200, 50), // Button size
              ),
              child: const Text('Login'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to the SignUpScreen when the "Sign Up" button is pressed.
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SignUpPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF526760), // Button color
                  minimumSize: const Size(200, 50), // Button size
              ),
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';

// class LandingPage extends StatelessWidget {
//   const LandingPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Landing Page'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Book Your Path to Knowledge: University Room Reservations',
//               style: TextStyle(fontSize: 24.0),
//             ),
//             const SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: () {
//                 // Add your navigation logic here, e.g., navigate to another screen.
//               },
//               child: const Text('Get Started'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }