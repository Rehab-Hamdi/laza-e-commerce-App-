import '../data/models/register.dart';

class Validation {
  /// Returns map field -> list of messages (can include multiple messages per field)
  Map<String, List<String>> validateRegisterModel(RegisterModel model) {
    final Map<String, List<String>> errors = {};

    void add(String field, String message) {
      errors.putIfAbsent(field, () => []).add(message);
    }

    final fn = model.firstName?.trim() ?? '';
    final ln = model.lastName?.trim() ?? '';
    final em = model.email?.trim() ?? '';
    final pw = model.password ?? '';

    if (fn.isEmpty) {
      add('firstName', 'First name is required.');
    } else if (fn.length < 3) {
      add('firstName', 'First name must be at least 3 characters.');
    }

    if (ln.isEmpty) {
      add('lastName', 'Last name is required.');
    } else if (ln.length < 3) {
      add('lastName', 'Last name must be at least 3 characters.');
    }

    if (em.isEmpty) {
      add('email', 'Email is required.');
    } else if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(em)) {
      add('email', 'Please enter a valid email.');
    }

    if (pw.trim().isEmpty) {
      add('password', 'Password is required.');
    } else if (pw.length < 8) {
      add('password', 'Password must be at least 8 characters.');
    }

    return errors;
  }
}
