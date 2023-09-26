import 'package:flutter/material.dart';

class ProfileUI extends StatelessWidget {
  const ProfileUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: <Widget>[
            Image(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 5,
                fit: BoxFit.cover,
                image: const NetworkImage(
                    'https://images.photowall.com/products/58832/blue-mountain-view.jpg?h=699&q=85')),
            const Positioned(
              bottom: -50.0,
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Color.fromARGB(255, 226, 223, 223),
                backgroundImage: NetworkImage(
                    'https://st.depositphotos.com/2101611/3925/v/450/depositphotos_39257945-stock-illustration-businessman-avatar-profile-picture.jpg'),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        const ListTile(
          title: Center(
            child: Text('Z.M. Shamimul Arefin'),
          ),
          subtitle: Center(
            child: Text('Profile Details'),
          ),
        ),
        FloatingActionButton.extended(
          label: const Text('Edit Profile'), // <-- Text
          backgroundColor: Color.fromARGB(255, 224, 222, 222),
          icon: const Icon(
            // <-- Icon
            Icons.edit,
            size: 24.0,
          ),
          onPressed: () {},
        ),
        const ListTile(
          title: Text('Summary'),
          subtitle: Text(
              'Cisco Certified IT Systems And Network Engineer with 5 + years of experience in the industry, which includes expertise in the areas of Routing, Switching, and Firewall. Expert level knowledge of troubleshooting, implementing, optimizing and testing of static and dynamic routing protocols such as EIGRP, OSPF, BGP ability to interpret and resolve complex route table problems. Implementation traffic filters on Cisco routes using Standard extended Access list.'),
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(),
        const SizedBox(
          height: 10,
        ),
        buildAccountOption(context, "Account Details"),
        const Divider(),
        buildAccountOption(context, "Setting"),
        const Divider(),
        buildAccountOption(context, "Profile History"),
        const Divider(),
        buildAccountOption(context, "Logout"),
      ],
    );
  }

  GestureDetector buildAccountOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[600])),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
