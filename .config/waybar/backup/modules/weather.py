#!$HOME/oscript/bin/python3

import json

weather_icon = [
    "", "","", ""," "," "," "," "," "," "," "," "," ","" 
]

with open("/home/akatsuki/.cache/info/weather_info", "r", encoding="utf-8") as f:
    weather_info = json.load(f)

code = eval(weather_info['now']['code'])

icon = weather_icon[code]

temp = weather_info['now']['temperature']

status = weather_info['now']['text']

temp_min_max = f"  {weather_info['daily'][0]['low']}℃ \t  {weather_info['daily'][0]['high']}℃"

wind_text = f"  {weather_info['daily'][0]['wind_speed']}m/s"

humidity_text = f"  {weather_info['daily'][0]['humidity']}%"

prediction = f"\n\n rainfall prediction: {weather_info['daily'][0]['precip']}%"

tooltip_text = str.format(
    "\t     {}\t\t\n{}\n{}\n\n{}\n{}{}",
    f'<span size="xx-large">{temp}℃</span>',
    f"<big>{icon}</big>",
    f"<big>{status}</big>",
    f"<big>{temp_min_max}</big>",
    f"{wind_text}\t{humidity_text}",
    f"<i>{prediction}</i>",
)

data = {
    'text': f"<big>{icon}</big> {temp}℃",
    'alt': status,
    'tooltip': tooltip_text,
}

print(json.dumps(data))
