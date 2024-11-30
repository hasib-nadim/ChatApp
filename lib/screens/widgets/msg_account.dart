import 'package:flutter/material.dart';

class MsgAccount extends StatelessWidget {
  const MsgAccount({super.key, required this.name, required this.imageUrl, required this.msg, required this.time, required this.isMuted, required this.isSeen});
  final String name ;
  final String imageUrl;
  final String msg;
  final String time;
  final bool isMuted;
  final bool isSeen;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 2),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(imageUrl),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: isSeen? FontWeight.normal : FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 180,
                        child: Text(
                          msg,   overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: isSeen? FontWeight.normal : FontWeight.bold)),
                      ),
                      Icon(
                        Icons.circle,
                        size: 8,
                        color: isSeen?Colors.grey: Colors.white,
                      ),
                      Text(time,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: isSeen? FontWeight.normal : FontWeight.bold)),
                    ],
                  )
                ],
              ),
            ),
          ),
          Icon(isMuted? Icons.notifications_off:null, color: Colors.white),
        ],
      ),
    );
  }
}
