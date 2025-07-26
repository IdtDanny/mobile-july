

class UserService {
  CollectionReference _userCollection = FirebaseFirestore.instance.collection(
    'user',
  );
  Future<void> addUser({
    required String firstName,
    required String lastName,
    required String username,
    required String email,
  })
  

  ;;
}
