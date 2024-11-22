// Prints number result of fetchUsersCount that returns 19 after 2 seconds
// Wild that this is not a circular import
import '0-main.dart';

Future<void> usersCount() {
  // Future<void> doesn't return anything but doesn't allow null
  return fetchUsersCount().then((count) {
    print(count);
  });
}

main() async {
  await usersCount();
}