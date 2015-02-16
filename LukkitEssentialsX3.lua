local lukkitEssentials = lukkit.addPlugin("LukkitEssentials", "1.0.1", function(plugin)
  plugin.onEnable(function()
    plugin.print("LukkitEssentials v" .. plugin.version .. " enabled")
  end)

  plugin.onDisable(function()
    plugin.warn("LukkitEssentials v" .. plugin.version .. " disabled")
  end)

  plugin.addCommand("aboutessentials", "Finds out specs about LukkitEssentials", "/aboutessentials", function(sender)
    sender:sendMessage("[LUKKIT] LukkitEssentials is at " .. plugin.version .. " for Lukkit")
  end)

  plugin.addCommand("forceupdate", "Forceupdates LukkitEssentials with libStorage.", "/forceupdate", function(sender)
    require("libStorage.lua")
    plugin.warn("LukkitEssentials can't recieve content from libStorage.")
    sender:sendMessage("[LUKKIT] Sorry, Lukkit can't work with libStorage, therefore your command was nulled.")
  end)
  
  plugin.addCommand("weather", "Changes the world's weather.", "/weather type", function(sender, weather)
    local player = server.getPlayer(sender)
    local testPlayer = sender:IsOp()
    if testPlayer == true then
      sender:sendMessage("[LUKKIT] Something happened when trying to configure the weather.")
      plugin.warn("[LUKKIT] Lukkit failed to respond to plugin event, responding null.")
    end
  end)

  plugin.addCommand("time", "Changes the world's time.", "/time value", function(sender, time)
    local player = server.getPlayer(sender)
    local testPlayer = sender:IsOp()
    if testPlayer == true then
    require("libStorage.lua")
    plugin.warn("[LUKKIT] I blame Minecraft's constant UUID changing.")
    sender:sendMessage("[LUKKIT] Time has failed, forever!")
    end
  end)

  plugin.addCommand("gm", "A alias of gamemode.", "/gm value", function(sender, value)
    local player = server.getPlayer(sender)
    local testPlayer = sender:IsOp()
    if testPlayer == true then
      local bukkit = luajava.bindClass("org.bukkit")
      bukkit.GameMode(value)
      sender:sendMessage("[LUKKIT] Your gamemode;" .. value .. "has been successfully set.")
      --sender:sendMessage("[LUKKIT] Sorry, something failed in the code of changing the gamemode.")
      --plugin.warn("[LUKKIT] Problemo, gamemode needs documentation from jd.bukkit.org.")
    end
  end)

  plugin.addCommand("apidoccheck", "Finds out if the apidoc service is enabled.", "/apidoccheck", function(sender)
    local player = server.getPlayer(sender)
    local testPlayer = sender:IsOp()
    if testPlayer == true then
      sender:sendMessage("[LUKKIT] HttpRequest is a success! (using SpigotDocs1.8) at http://hub.spigotmc.org/javadocs/bukkit")
    end
  end)
  plugin.addCommand("about", "Finds out the version of Lukkit the server is running.", "/about", function(sender)
    sender:sendMessage("Lukkit 1.7.9 RO.2 (implementing 1.8 spigot apidoc)")
  end)

  plugin.addCommand("kill", "Kills the specified person.", "/kill player", function(sender, player)
    sender:sendMessage("[LUKKIT] Lukkit can't find bukkit:kill, nulling response.")
    plugin.warn("[LUKKIT] Lukkit api-docs success, function not found.")
  end)

  plugin.addCommand("pl", "A alias to /plugins", "/pl", function(sender)
    sender:sendMessage("Plugins: Lukkit, LukkitAPI, LukkitEssentials, SpigotDocs, BukkitEmuAPI, BukkitSeperateLoader")
  end)

  plugin.addCommand("nick", "A alias to /nickname", "/nickname name", function(sender, name)
    require("libStorage.lua")
    sender:sendMessage("[LUKKIT] libStorage transfered, httpservice failed to recieve docs.")
    plugin.warn("[LUKKIT] Api-docs failed loading, attempting local docs. No docs found.")
  end)

  plugin.addCommand("plugins", "Find out the installed plugins", "/pl", function(sender)
    sender:sendMessage("Plugins: Lukkit, LukkitAPI, LukkitEssentials, SpigotDocs, BukkitEmuAPI, BukkitSeperateLoader")
  end)

  plugin.addCommand("nickname", "Change your server username.", "/nickname", function(sender)
  require("libStorage.lua")
  sender:sendMessage("[LUKKIT] libStorage transfered, httpservice failed to recieve docs.")
  plugin.warn("[LUKKIT] Api-docs failed loading, attempting local docs. No docs found.")
  end)
end)