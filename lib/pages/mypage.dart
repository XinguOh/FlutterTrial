import 'package:flutter/material.dart';
import 'MY/information.dart';
class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyState();
}

class _MyState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Page'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Information About Me'),
            subtitle: const Text('Your name, email, etc.'),
            leading: Icon(Icons.person),
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => Information(
                    title: 'About Me',
                    content: 'Here is some detailed information about me...',
                  ),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    const begin = Offset(1.0, 0.0);
                    const end = Offset.zero;
                    const curve = Curves.easeOut;

                    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                    var offsetAnimation = animation.drive(tween);

                    return SlideTransition(
                      position: offsetAnimation,
                      child: child,
                    );
                  },
                  transitionDuration: const Duration(milliseconds: 150), // Custom transition duration
                ),
              );
            },
          ),



          ListTile(
            title: const Text('Customer Rank'),
            subtitle: const Text('Your current rank'),
            leading: Icon(Icons.star),
          ),
          ListTile(
            title: const Text('Coupons'),
            subtitle: const Text('Available coupons'),
            leading: Icon(Icons.card_giftcard),
          ),
          ListTile(
            title: const Text('Mileage'),
            subtitle: const Text('Your mileage points'),
            leading: Icon(Icons.timeline),
          ),
          const Divider(),
          ListTile(
            title: const Text('Invite and Get More Discount'),
            leading: Icon(Icons.share),
          ),
          ListTile(
            title: const Text('Previous Ride'),
            leading: Icon(Icons.history),
          ),
          ListTile(
            title: const Text('Liked Driver'),
            leading: Icon(Icons.thumb_up),
          ),
          ExpansionTile(
            title: const Text('Pay Bill'),
            leading: Icon(Icons.payment),
            children: [
              ListTile(
                title: const Text('Pay List'),
              ),
              ListTile(
                title: const Text('See'),
              ),
            ],
          ),
          const Divider(),
          ListTile(
            title: const Text('Contact'),
            leading: Icon(Icons.contact_phone),
          ),
          ListTile(
            title: const Text('Ask a lot'),
            leading: Icon(Icons.question_answer),
          ),
        ],
      ),
    );
  }
}
