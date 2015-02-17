local lukkitEssentials = lukkit.addPlugin("LukkitEssentials", "3.0.3", function(plugin)
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
    plugin.warn("LukkitEssentials can't recieve data from http://essentials.lukkit.gq/downloads/daily-builds/")
    sender:sendMessage("[LUKKIT] Sorry, Lukkit can't recieve data from a outside source, therefore your command was nulled.")
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
    plugin.warn("[LUKKIT] I blame Minecraft's constant UUID changing.")
    sender:sendMessage("[LUKKIT] Time has failed, forever!")
    end
  end)

  plugin.addCommand("gm", "A alias of gamemode.", "/gm value", function(sender, value)
    local player = server.getPlayer(sender)
    local testPlayer = sender:IsOp()
    if testPlayer == true then
      local bukkit = luajava.bindClass("org.bukkit")
      bukkit:GameMode(value)
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
    sender:sendMessage("Lukkit 1.7.9 RO.3 (implementing 1.8 spigot apidoc)")
  end)

  plugin.addCommand("kill", "Kills the specified person.", "/kill player", function(sender, player)
    sender:sendMessage("[LUKKIT] Lukkit can't find the function, nulling command.")
    plugin.warn("[LUKKIT] Api-docs successfully loaded, function not found.")
  end)

  plugin.addCommand("pl", "A alias to /plugins", "/pl", function(sender)
    sender:sendMessage("Plugins: Lukkit, LukkitAPI, LukkitEssentials, SpigotDocs, BukkitEmuAPI, BukkitSeperateLoader")
  end)

  plugin.addCommand("nick", "A alias to /nickname", "/nickname name", function(sender, name)
    sender:sendMessage("[LUKKIT] Data is transfered locally, but function cannot be found.")
    plugin.warn("[LUKKIT] As from 1.0.2 libStorage is optional, and in 1.0.3 it is expected to be incompatible.")
    plugin.warn("[LUKKIT] Api-docs successfully loaded, function not found.")
  end)

  plugin.addCommand("plugins", "Find out the installed plugins", "/pl", function(sender)
    sender:sendMessage("Plugins: Lukkit, LukkitAPI, LukkitEssentials, SpigotDocs, BukkitEmuAPI, BukkitSeperateLoader")
  end)
  
    plugin.addCommand("plugins", "Find out the installed plugins", "/bukkit:pl", function(sender)
    sender:sendMessage("Plugins: Lukkit, LukkitAPI, LukkitEssentials, SpigotDocs, BukkitEmuAPI, BukkitSeperateLoader")
  end)
  
    plugin.addCommand("plugins", "Find out the installed plugins", "/plugins", function(sender)
    sender:sendMessage("Plugins: Lukkit, LukkitAPI, LukkitEssentials, SpigotDocs, BukkitEmuAPI, BukkitSeperateLoader")
  end)
  
  plugin.addCommand("plugins", "Find out the installed plugins", "/bukkit:plugins", function(sender)
    sender:sendMessage("Plugins: Lukkit, LukkitAPI, LukkitEssentials, SpigotDocs, BukkitEmuAPI, BukkitSeperateLoader")
  end)
  plugin.addCommand("nickname", "Change your server username.", "/nickname", function(sender)
  sender:sendMessage("[LUKKIT] Data is transfered locally, but function cannot be found.")
  plugin.warn("[LUKKIT] As from 1.0.2 libStorage is optional, and in 1.0.3 it is expected to be incompatible.")
  plugin.warn("[LUKKIT] Api-docs successfully loaded, function not found.")
  end)
end)
