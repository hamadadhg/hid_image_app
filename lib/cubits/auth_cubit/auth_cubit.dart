/*
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hid_image_app/cubits/auth_cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit()
      : super(
          AuthInitialState(),
        );
  void registerUserMethod(
      {required String userName,
      required String email,
      required String password,
      required String passwordConfirmation}) async {
    emit(
      AuthLoadingState(),
    );
    if (passwordConfirmation != password) {
      emit(
        AuthFailureState(
          errorMessage: 'The Password Don\'t Match',
        ),
      );
      return;
    }
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(
        AuthSuccessState(
          successMessage: 'Registration Successful Welcome $userName',
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(
          AuthFailureState(
            errorMessage: 'The Password Is Too Littel Or Weak',
          ),
        );
      } else if (e.code == 'email-already-in-use') {
        emit(
          AuthFailureState(
            errorMessage: 'The Email Is Already Exists',
          ),
        );
      }
    } catch (e) {
      emit(
        AuthFailureState(
          errorMessage: 'Registration\'s Failure ${e.toString()}',
        ),
      );
    }
  }

  void loginUserMethod(
      {required String email, required String password}) async {
    emit(
      AuthLoadingState(),
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      emit(
        AuthSuccessState(
          successMessage: 'Login Successful',
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(
          AuthFailureState(
            errorMessage: 'The User Not Found',
          ),
        );
      } else if (e.code == 'wrong-password') {
        emit(
          AuthFailureState(
            errorMessage: 'The Password\'s Wrong',
          ),
        );
      }
    } catch (e) {
      emit(
        AuthFailureState(
          errorMessage: 'Login Failure ${e.toString()}',
        ),
      );
    }
  }
}
*/
