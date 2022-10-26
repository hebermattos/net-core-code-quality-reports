using net_core_code_quality_reports.services;

namespace test;

public class UnitTest1
{
    [Fact]
    public void Test1()
    {
        //arrange
        var wfs = new WeatherForecastService();

        //act
        var actual = wfs.GetWeatherForecasts();

        //assert
        Assert.NotNull(actual);

        
    }
}