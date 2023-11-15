import 'package:bpm/firebase_options_dev.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseService {
  static Future<FirebaseService> init() async {
    //todo put the good envireonment
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    return FirebaseService();
  }
}
