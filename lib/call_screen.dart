import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child:  ListView.builder(
          itemCount: 3,
          itemBuilder: (context,i){
        return  ListTile(
          leading: const CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
                'https://img.freepik.com/free-photo/pleasant-looking-serious-man-stands-profile-has-confident-expression-wears-casual-white-t-shirt_273609-16959.jpg?w=1480&t=st=1668595035~exp=1668595635~hmac=978ef9d61b4263bc2b0547ca1752fe8d03164a1a9317d081ab016d12fef5f47d'),
          ),
          title: const Text('Asad'),
          subtitle: Text('12 min ago'),
          trailing: Icon(i/2==0?Icons.call:Icons.video_call),
        );
      })
    );
  }
}
