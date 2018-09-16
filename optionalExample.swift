#!/usr/bin/swift

func getHaterStatus() -> String? {
	if weather == "sunny" {
			return nil
	} else { return "hate" }
}

var status: String
status = getHaterStatus(weather: "rainy")

