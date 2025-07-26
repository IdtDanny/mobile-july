import 'package:cloud_firestore/cloud_firestore.dart';

class UserService {
  final CollectionReference _userCollection = FirebaseFirestore.instance
      .collection('users');

  /// Adds a new user document to the 'users' collection in Firestore.
  Future<void> addUser({
    required String firstName,
    required String lastName,
    required String username,
    required String email,
  }) {
    return _userCollection.add({
      'firstname': firstName,
      'lastname': lastName,
      'username': username,
      'email': email,
      'createdAt': Timestamp.now(),
    });
  }

  /// Retrieves a real-time stream of all users from the collection,
  /// ordered by their creation time in descending order (newest first).
  Stream<QuerySnapshot> getUsersStream() {
    return _userCollection.orderBy('createdAt', descending: true).snapshots();
  }
}
