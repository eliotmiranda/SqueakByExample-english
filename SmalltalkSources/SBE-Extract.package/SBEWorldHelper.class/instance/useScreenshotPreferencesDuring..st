private utils
useScreenshotPreferencesDuring: aBlock

	^ Preferences
		setPreferences: ({
			#(UIManager >> #openToolsAttachedToMouseCursor) -> false.
			#(Model >> #useColorfulWindows) -> true }
				collect: [:setting | setting key join asSymbol -> setting value])
		during: aBlock