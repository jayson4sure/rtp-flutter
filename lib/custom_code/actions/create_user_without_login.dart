// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<DocumentReference?> createUserWithoutLogin(
    String email, String password, String displayName, String clientID) async {
  //String returnUid = "";
  DocumentReference? documentReference;

  FirebaseApp app = await Firebase.initializeApp(
      name: 'Secondary', options: Firebase.app().options);

  try {
    UserCredential userCredential = await FirebaseAuth.instanceFor(app: app)
        .createUserWithEmailAndPassword(email: email, password: password);

    User user = userCredential.user!;

    //Now create the users document because we can't do that from within FlutterFlow (annoying)
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');
    documentReference = users.doc(user.uid);

    // Data to be added to the document
    Map<String, dynamic> data = {
      'name': '${displayName}',
      'email': '${user.email}',
      'client_id': clientID,
      'uid': user.uid,
      'created_time': FieldValue.serverTimestamp(), // Set current server time
    };

    // Create the document
    await documentReference.set(data);

    print('Document created successfully');

    //returnUid = user.uid;
  } on FirebaseAuthException catch (e) {
    print('Error: ${e.message.toString()}');
    // Do something with exception. This try/catch is here to make sure
    // that even if the user creation fails, app.delete() runs, if is not,
    // next time Firebase.initializeApp() will fail as the previous one was
    // not deleted.
  }

  await app.delete();
  return documentReference;

  // Add your function code here!
}
