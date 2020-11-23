--[[
local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_kekmememememes")
]]--

local lang = vRP.lang
local DrugstoNPC = class("DrugstoNPC", vRP.Extension)

function DrugstoNPC:__construct()
    vRP.Extension.__construct(self)
end

RegisterServerEvent('drugs:item')
AddEventHandler('drugs:item', function()
	local user = vRP.users_by_source[source]
	local player = source
	if not user:tryTakeItem("weed",1) then
	--if not user:tryTakeItem(user,"weed",1,notify) then
		TriggerClientEvent('done', player)
		TriggerClientEvent('cancel', player)
	else
		TriggerClientEvent('cancel', player)
	end
end)

RegisterServerEvent('drugs:money')
AddEventHandler('drugs:money', function()
	local user = vRP.users_by_source[source]
	local player = source
	local reward = math.random(150,300)
	user:tryGiveItem("dirty_money", reward) --// dar dinero sucio
	--user:giveWallet(reward) --// dar dinero limpio
	--user:giveWallet(user,reward)
	--vRP.EXT.Base.remote._notify(user.source, "Venta ilegal ~g~$"..reward)
end)

RegisterServerEvent('vRP_drugNPC:policia')
AddEventHandler('vRP_drugNPC:policia', function(x,y,z)
     vRP.EXT.Phone:sendServiceAlert({nil, "police",x,y,z,"Someone is offering me drugs."})
end)