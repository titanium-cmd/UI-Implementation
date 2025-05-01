import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserController {
  final ValueNotifier<bool> _isLoadingNotifier = ValueNotifier(false);

  set setLoadingState(bool isLoading) {
    _isLoadingNotifier.value = isLoading;
  }

  ValueNotifier<bool> getIsLoadingNotifier() => _isLoadingNotifier;

  Future<(bool, String)> updateuserProfile(
    String firstName,
    String lastName,
    String address,
  ) async {
    try {
      setLoadingState = true;
      final response = await http.patch(
          Uri.parse(
              'https://fixit-testing.tuulbox.app/api/accounts/6d475484-c5d6-492d-98c7-27b0733806b1/'),
          headers: {"Authorization": "Bearer <token>"},
          body: {"firstName": firstName, "lastName": lastName, "address": address});
      setLoadingState = false;
      if (response.statusCode == 200) {
        return (true, "User profile updated successfully");
      }
      return (false, "Failed to update profile");
    } catch (e) {
      setLoadingState = false;
      return (false, "Something went wrong here...");
    }
  }
}
