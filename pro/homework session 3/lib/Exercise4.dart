/*  Weather Report:
Use Map and List to create a program that stores weather data for different cities (temperature,
humidity, etc.). Write a function that can retrieve and print weather details using a city name. */


void main() {
  Map<String, Map<String, dynamic>> weatherData = {
    'Egypt': {'temperature': 22, 'humidity': 78, 'condition': 'Sunny'},
    'Sudi Aribia': {'temperature': 15, 'humidity': 65, 'condition': 'Cloudy'},
  };

  getWeatherDetails(weatherData, 'Egypt');
  getWeatherDetails(weatherData, 'Sudi Aribia'); 
}

void getWeatherDetails(Map<String, Map<String, dynamic>> data, String city) {
  if (data.containsKey(city)) {
    print("Weather in $city:");
    print("Temperature: ${data[city]?['temperature']}°C");
    print("Humidity: ${data[city]?['humidity']}%");
    print("Condition: ${data[city]?['condition']}");
  } else {
    print("Weather data for $city is not available.");
  }
}
