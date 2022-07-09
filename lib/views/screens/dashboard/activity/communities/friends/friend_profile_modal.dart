import 'package:flutter/material.dart';

import '../../../../../../res/res.dart';

friendProfileModal(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40), topRight: Radius.circular(40)),
    ),
    builder: (context) => const FriendProfile(),
  );
}

unFriendModal(context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
    ),
    builder: (context) => FractionallySizedBox(
      heightFactor: 0.25,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                minimumSize: const Size(374, 54),
                backgroundColor: Resources.color.cGreen,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                  bottomLeft: Radius.circular(4),
                )),
              ),
              child: Text(
                'Unfriend',
                style: TextStyle(
                    color: Resources.color.cWhite,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 23.76),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                backgroundColor: Resources.color.cWhite,
                minimumSize: const Size(374, 54),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Resources.color.cGreen, width: 1.5),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                      bottomLeft: Radius.circular(4),
                    )),
              ),
              child: Text(
                'Cancel',
                style: TextStyle(
                    color: Resources.color.redText,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

// listView() async {
//   await Future<Widget>.delayed(
//     const Duration(seconds: 3),
//     () {
//       return ListView.builder(
//         itemCount: 10,
//         itemBuilder: (context, index) => ListTile(
//           title: Text('car'),
//         ),
//       );
//     },
//   );
//   return ;
// }

class FriendProfile extends StatefulWidget {
  const FriendProfile({Key? key}) : super(key: key);

  @override
  State<FriendProfile> createState() => _FriendProfileState();
}

class _FriendProfileState extends State<FriendProfile> {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.9,
      child: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(Icons.arrow_back_ios)),
              Text('KayBoy odinaka'),
              IconButton(
                  onPressed: () => unFriendModal(context),
                  icon: Icon(Icons.menu))
            ],
          ),
          const Divider(thickness: 1),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(child: Icon(Icons.account_circle)),
              const SizedBox(height: 35),
              InkWell(
                child:
                    Wrap(children: const [Icon(Icons.check), Text('Friend')]),
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.info_outline,
                        size: 20, color: Colors.blue),
                    Text(
                      'Whatever info Kayboy lets you see will appear here.',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Resources.color.hintText),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
