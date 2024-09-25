import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial()) {
    // Handler for fetching weather by location
    on<FetchWeather>((event, emit) async {
      try {
        WeatherFactory wf = WeatherFactory("3ac5856b75b7aaa2da5f8c83239a84e4",
            language: Language.ENGLISH);
        Weather weather = await wf.currentWeatherByLocation(
            event.position.latitude, event.position.longitude);
        emit(WeatherSuccess(weather));
      } catch (e) {
        emit(WeatherFailure('Unable weather data. Please try again.'));
      }
    });


  }
}
