
QBCore.Functions.CreateCallback('skillsystem:fetchStatus', function(source, cb)
     local Player = QBCore.Functions.GetPlayer(source)
 
      if Player then
          exports.oxmysql.scalar('SELECT skills FROM players WHERE citizenid = @citizenid', {
                ['@citizenid'] = Player.PlayerData.citizenid
           }, function(status)
               if status ~= nil then
                    cb(status)
               else
                    cb(nil)
               end
           end)
      else
           cb()
      end
 end)
 



RegisterServerEvent('skillsystem:update')
AddEventHandler('skillsystem:update', function (data)
     local Player = QBCore.Functions.GetPlayer(source)
     --print(data)

	exports.oxmysql:execute('UPDATE players SET skills = @skills WHERE citizenid = @citizenid', {
		['@skills'] = data,
		['@citizenid'] = Player.PlayerData.citizenid
	})
end)
