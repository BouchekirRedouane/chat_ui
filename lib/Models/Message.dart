import 'User.dart';

class Message {
  final User sender;
  final List<User> readers;
  final String
      time; //it should be DateTime but I used String to simplify the implementation of the test
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.readers,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'images/CurrentUser.png',
);

//Users
final User Colin = User(
  id: 1,
  name: 'Colin',
  imageUrl: 'images/Colin.png',
);

final User Corey = User(
  id: 1,
  name: 'Corey',
  imageUrl: 'images/Corey.png',
);

final User Jean_Marc = User(
  id: 1,
  name: 'Jean-Marc',
  imageUrl: 'images/Jean_Marc.png',
);

final User Mila = User(
  id: 1,
  name: 'Mila',
  imageUrl: 'images/Mila.png',
);

List<Message> chats = [
  Message(
    sender: Colin,
    readers: null,
    time: '8:30 PM',
    text: 'I was gonna be productive...Laundry, cleaning, errands...',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Corey,
    readers: null,
    time: '8:30 PM',
    text: 'Same here. Adulting',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    readers: null,
    time: '8:30 PM',
    text: 'Need a plan B? Wanna watch the game at 3?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Jean_Marc,
    readers: null,
    time: '8:30 PM',
    text: 'Ok Icon',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: Mila,
    readers: null,
    time: '8:30 PM',
    text: 'I\'m in too!',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    readers: null,
    time: '8:30 PM',
    text: 'It\'s on',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    readers: [Corey, Colin, Jean_Marc, Mila],
    time: '8:30 PM',
    text: 'See you at game time!',
    isLiked: false,
    unread: true,
  ),
];
