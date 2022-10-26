using Microsoft.AspNetCore.Mvc;
using net_core_code_quality_reports.services;

namespace net_core_code_quality_reports.Controllers;

[ApiController]
[Route("[controller]")]
public class WeatherForecastController : ControllerBase
{

    private readonly ILogger<WeatherForecastController> _logger;
    private readonly WeatherForecastService _wfs;

    public WeatherForecastController(ILogger<WeatherForecastController> logger)
    {
        _logger = logger;
        _wfs =  new WeatherForecastService();
    }

    [HttpGet(Name = "GetWeatherForecast")]
    public IEnumerable<WeatherForecast> Get()
    {
        return _wfs.GetWeatherForecasts();
    }

}
