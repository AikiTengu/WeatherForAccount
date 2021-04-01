@RestResource(urlMapping='/Weather/*')
global with sharing class WeatherManager {
    @HttpGet
    global static String getWeatherForAccount() {
        RestRequest request = RestContext.request;
        // grab the Contact from the end of the URL
        String accountNumber = request.requestURI.substring(
          request.requestURI.lastIndexOf('/')+1);
        String city = AccountLocationManager.getCity(accountNumber);
        WeatherPOJO weather = AccountWeatherConsumer.getWeatherByCity(city, '9c9350d7547dca5651483d1e364cc1fa');
        String result = 'Weather in ' + city + ': Temperature: ' + weather.getTemp() + '; Pressure: ' + weather.getPressure() + '; Humidity: ' + weather.getHumidity();
        return result;
    }
}
