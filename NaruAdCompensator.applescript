tell application "Safari"
	tell document 1 of window 1
		set narURL to do JavaScript "document.getElementById(\"embedcode\").getElementsByTagName(\"iframe\")[0].getAttribute(\"src\")"
		set narURL2 to do JavaScript "document.getElementById(\"embedcode\").getElementsByTagName(\"iframe\")[1].getAttribute(\"src\")"
		do JavaScript "document.write(\"Junk\")"
	end tell
	make new document at the end of documents with properties {URL:narURL}
	
	delay 1
	if narURL2 is not missing value then
		make new tab at the end of tabs of window 1 with properties {URL:narURL2}
	end if
end tell
