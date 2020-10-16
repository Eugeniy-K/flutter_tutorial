import 'package:flutter/material.dart';
import 'package:flutter_tutorial/models/event.dart';

class EventCard extends StatefulWidget {
  const EventCard({
    Key key,
    @required this.event,
  }) : super(key: key);

  final Event event;

  @override
  _EventCardState createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  bool _isEnabled = true;

  @override
  void initState() {
    super.initState();
    print("initState");
    print("initState");
  }
  @override
  Widget build(BuildContext context) {
    print("build");
    return Card(
        color: Colors.red[300],
        margin: EdgeInsets.symmetric(vertical: 7.0),
        elevation: 10,                                 //высота над экраном
        child: ListTile(
          enabled: _isEnabled,
          title: Text(widget.event.name, style: TextStyle(fontSize: 20),),
          subtitle: Text("${widget.event.location}   ${widget.event.startDateTime}"),
          leading: Icon(                                  //иконка в начале
            Icons.account_balance_sharp,
            size: 40,
            color: Colors.black,
          ),
          trailing: IconButton(                           //иконка в конце
            icon: _isEnabled ? Icon(Icons.lock_outlined) : Icon(Icons.lock_open),
            onPressed: () => setState(() => _isEnabled = !_isEnabled),
          ),
          onTap: () => print("${widget.event.name} - onTap"),
          onLongPress: () => print("${widget.event.name} - long press"),
        )
    );
  }
}