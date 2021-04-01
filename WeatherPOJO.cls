public class WeatherPOJO {
    private Double temp;
    private Integer visibility;
    private Double windSpeed;
    private Integer pressure;
    private Integer humidity;

    public Double getTemp() {
        return this.temp;
    }

    public void setTemp(Double temp) {
       	this.temp = temp;
    }

    public Integer getVisibility() {
        return this.visibility;
    }

    public void setVisibility(Integer visibility) {
       	this.visibility = visibility;
    }

    public Double getWindSpeed() {
        return this.windSpeed;
    }

    public void setWindSpeed(Double windSpeed) {
       	this.windSpeed = windSpeed;
    }

    public Integer getPressure() {
        return this.pressure;
    }

    public void setPressure(Integer pressure) {
       	this.pressure = pressure;
    }

    public Integer getHumidity() {
        return this.humidity;
    }

    public void setHumidity(Integer humidity) {
       	this.humidity = humidity;
    }
}
