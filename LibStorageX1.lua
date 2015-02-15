local libStorage = lukkit.addPlugin("libStorage", "1.8", function(plugin)
  plugin.onEnable(function()
    plugin.print("libStorage v" .. plugin.version .. " enabled")
  end)

  plugin.onDisable(function()
    plugin.warn("libStorage v" .. plugin.version .. " disabled")
  end)

  plugin.addCommand("libabout", "Sends the sender the specs of libStorage.", "/libabout", function(sender, libFunctionA)
  	sender:sendMessage("LibStorage is running " .. plugin.version .. ". LibStorage is running in compatibility mode.")
  	end)
  plugin.addCommand("libupdate", "Attempts to update the library in-game.", "/libupdate", function(sender)
  	sender:sendMessage("[libStorage] libupdate componment failed to commmence.")
  	plugin.warn("[libStorage] lua script failed to start due to compatibility mode.")
  	end)
  congressEvent = "false" -- useful for congress plugins
  autoupdateBukkit = "false" -- a expiremental componoment.
end)