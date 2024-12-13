import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_ojt_task/features/auth/presentation/cubit/auth_states.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthIntial());

  Future<void> signUp({
    required String name,
    required String password,
    required String email,
  }) async {
    emit(SignUpLoadingState());
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      User user = userCredential.user!;
   

   await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
  'name': name,
  'email': email,
  'uid': user.uid,
});


      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      String errorMessage;

      switch (e.code) {
        case 'email-already-in-use':
          errorMessage = 'This email is already in use.';
          break;
        case 'weak-password':
          errorMessage = 'The password is too weak.';
          break;
        case 'invalid-email':
          errorMessage = 'The email address is invalid.';
          break;
        default:
          errorMessage = 'An unexpected error occurred. Please try again.';
      }

      emit(SignUpErrorState(error: errorMessage));
    } catch (e) {
      log("Unexpected Error: ${e.toString()}");
      emit(SignUpErrorState(
          error: 'An unexpected error occurred. Please try again.'));
    }
  }

  Future<void> login({
    required String password,
    required String email,
  }) async {
    try {
      emit(LoginLoadingState());

      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
     
          

      emit(LoginSuccessState());
    } on FirebaseAuthException catch (e) {
      String errorMessage;

      switch (e.code) {
        case 'user-not-found':
          errorMessage = 'No user found for that email.';
          break;
        case 'wrong-password':
          errorMessage = 'Incorrect password provided for that user.';
          break;
        case 'invalid-email':
          errorMessage = 'The email address is invalid.';
          break;
        default:
          errorMessage = 'An unexpected error occurred. Please try again.';
      }

      emit(LoginErrorState(error: errorMessage));
      log(errorMessage);
    } catch (e) {
      emit(LoginErrorState(error: e.toString()));
      log(e.toString());
    }
  }
}
