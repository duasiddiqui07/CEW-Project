#ifndef WEATHER_H
#define WEATHER_H

typedef struct {
    double temperature;
    int humidity;
    char city[50];
    char country[50];
} EnvironmentalData;

// Function prototypes with updated names
int fetch_weather_data(const char *url, char *response);
int extract_environmental_data(const char *json_data, EnvironmentalData *data);
void log_environmental_data(const char *filename, const EnvironmentalData *data);
void evaluate_weather_alerts(const EnvironmentalData *data);

#endif // WEATHER_H
