public class AccountWeatherConsumer {
    public static WeatherPOJO getWeatherByCity(String city, String apiKey){
        Object weatherREST;
        WeatherPOJO weatherResult = new WeatherPOJO();

        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('http://api.openweathermap.org/data/2.5/weather?q=' + city + '&APPID=' + apiKey);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
    	// parse the JSON response
        if (response.getStatusCode() == 200) {
            Map<String, Object> result = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            weatherREST = result.get('main');
        }

        if (weatherREST != NULL  ) {
            Map<String, Object> weatherMain = (Map<String, Object>) JSON.deserializeUntyped(JSON.serialize(weatherREST));
            weatherResult.setHumidity((Integer) weatherMain.get('humidity'));
            weatherResult.setPressure((Integer) weatherMain.get('pressure'));
            weatherResult.setTemp((Double) weatherMain.get('temp'));
        }
        return weatherResult;
}
}
