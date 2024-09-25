part of 'weather_bloc.dart';

sealed class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

class FetchWeather extends WeatherEvent {
  final Position position;
  const FetchWeather(this.position);

  @override
  List<Object> get props => [position];
}

class SearchWeather extends WeatherEvent {
  final String cityName;

  SearchWeather(this.cityName);

  @override
  List<Object> get props => [cityName];
}

class FetchWeatherEvent extends WeatherEvent {
  final String cityName;
  FetchWeatherEvent(this.cityName);
}
