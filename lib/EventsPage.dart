import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'NavigationBar.dart';

class EventsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Events'),
      ),
      body: EventsLayout(),
      bottomNavigationBar: NavigationBar(),
    );
  }

}

class EventsLayout extends StatefulWidget {
  @override
  EventsLayoutState createState() => new EventsLayoutState();
}

class EventsLayoutState extends State<EventsLayout> {

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.only(),
      child: Column(
        children: <Widget>[
          Expanded(
            child: _eventCards(),
          )
        ],
      )
    );
  }

  Widget _eventCards() {
    return new ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20.0),
      itemBuilder: (content, index) => _buildRow(content, index),
      itemCount: 25,
      separatorBuilder: (BuildContext context, int index) => Divider(),
    );
  }

  void page(int index) {
    Navigator.of(context).push(
      new MaterialPageRoute<void> (
          builder: (BuildContext context) {
            return new Scaffold(
              appBar: AppBar(),
              body: Center(
                child: eventDetailCard(index),
              )
            );
          }
      )
    );
  }

  Widget eventDetailCard(int index) {
    return Card(
      child: Column(
        children: <Widget> [
          const ListTile(
            leading: Icon(Icons.album),
            title: Text('The Enchanted Nightingale'),
            subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
          ButtonTheme.bar( // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () { /* ... */ },
                ),
                FlatButton(
                  child: const Text('LISTEN'),]'] x'
                  onPressed: () { /* ... */ },
                ),
              ],
            ),
          )
        ]
      )
    );
  }

  Widget _buildRow(BuildContext context, int index) {
    return new GestureDetector(
      child: Card (
        elevation: 2.0,
        child: new ListTile(
          leading: const Icon (Icons.calendar_today),
          title: Text('card #: $index'),
          subtitle: const Text('Card subtext'),
          enabled: true,
        ),
      ),
      onTap: () { page(index); },
    );
  }

}
