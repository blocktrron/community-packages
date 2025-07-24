#!/usr/bin/lua

-- Has to run after 200-wireless and with Gluon outdoor-mode disabled

local uci = require('simple-uci').cursor()
local wireless = require 'gluon.wireless'

local enabled = uci:get_bool('gluon', 'ffda_outdoor_mesh', 'enabled', false)

if not enabled then
	return
end

if uci:get_bool('gluon', 'wireless', 'outdoor', false) then
	return
end

-- Find 5GHz radios, set channel and country3 
wireless.foreach_radio(uci, function(radio, index, config)
	if radio.band ~= '5g' then
		return
	end

	local channel = uci:get('gluon', 'ffda_outdoor_mesh', 'channel')
	if not channel or channel == '' then
		channel = '100'
	end

	local radio_name = radio['.name']
	uci:set('wireless', radio_name, 'channel', channel)
	uci:set('wireless', radio_name, 'channels', channel)
	uci:set('wireless', radio_name, 'country3', '0x4f')
end)

uci:save('wireless')
