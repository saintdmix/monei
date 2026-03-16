import 'package:flutter_bloc/flutter_bloc.dart';
import 'profile_event.dart';
import 'profile_state.dart';
import '../../core/network/api_client.dart';
import '../../data/models/user_model.dart';
import '../../core/network/api_response.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ApiClient _apiClient = ApiClient();

  ProfileBloc() : super(ProfileInitial()) {
    on<ProfileFetchRequested>(_onFetchRequested);
  }

  Future<void> _onFetchRequested(
    ProfileFetchRequested event,
    Emitter<ProfileState> emit,
  ) async {
    emit(ProfileLoading());
    try {
      final response = await _apiClient.account.getCurrentUser();
      final apiResponse = ApiResponse.fromResponse(response);

      if (apiResponse.isSuccess) {
        final data = apiResponse.data;
        if (data != null) {
          final user = UserModel.fromJson(data);
          emit(ProfileLoaded(user: user));
        } else {
          emit(const ProfileError('Failed to parse user data.'));
        }
      } else {
        emit(ProfileError(apiResponse.message));
      }
    } catch (e) {
      emit(ProfileError(e.toString()));
    }
  }
}
