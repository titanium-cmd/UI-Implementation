import 'package:http/http.dart' as http;

class UserController {
  Future<(bool, String)> updateuserProfile(
    String firstName,
    String lastName,
    String address,
  ) async {
    try {
      final response = await http.patch(
          Uri.parse(
              'https://fixit-testing.tuulbox.app/api/accounts/6d475484-c5d6-492d-98c7-27b0733806b1/'),
          headers: {
            "Authorization":
                "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzQ2NjI5NzE4LCJpYXQiOjE3NDYwMjQ5MTgsImp0aSI6ImZmNmI0YWM4ODlkYzQzYzdhYmEyMzQyZGE0ZjY2NGMxIiwidXNlcl9pZCI6IjZkNDc1NDg0LWM1ZDYtNDkyZC05OGM3LTI3YjA3MzM4MDZiMSJ9.rkyTGLSyeY6pGQMWoTrjPq4uMYg5No7L39Cmmr_bCIA"
          },
          body: {
            "firstName": firstName,
            "lastName": lastName,
            "address": address
          });
      if (response.statusCode == 200) {
        return (true, "User profile updated successfully");
      }
      return (false, "Failed to update profile");
    } catch (e) {
      return (false, "Something went wrong here...");
    }
  }
}
