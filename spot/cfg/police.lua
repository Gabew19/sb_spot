local cfg{}

sB = Tunnel.getInterface("sB","sB_leo")

RegisterCommand("leo", function(source)
	local user_id = sB.getUserId({source})
	  if sB.hasGroup({user_id,"cop"}) then
		TriggerClientEvent("chatMessage", source, "[Dispatch]", { 255, 0, 0 }, "Have a safe patrol.")
	else
		TriggerClientEvent("chatMessage", source, "[Dispatch]", { 255, 0, 0 }, "Are you trying to impersonate a cop!")
		end
end)