local awful = require("awful")
local beautiful = require("beautiful")
local clientkeys = require("configs.keys.keybinds").clientkeys
local clientbuttons = require("configs.clientbuttons")

-- {{{ Rules
-- Rules to apply to new clients (through the "manage" signal).
local twoScreens = screen:count() == 2

awful.rules.rules = {
	-- All clients will match this rule.
	{
		rule = {},
		properties = {
			border_width = beautiful.border_width,
			border_color = beautiful.border_normal,
			focus = awful.client.focus.filter,
			raise = true,
			keys = clientkeys,
			buttons = clientbuttons,
			titlebars_enabled = false,
			screen = awful.screen.preferred,
			placement = awful.placement.no_overlap + awful.placement.no_offscreen,
		},
		callback = awful.client.setslave,
	},

	-- Floating clients.
	{
		rule_any = {
			instance = {
				"DTA", -- Firefox addon DownThemAll.
				"copyq", -- Includes session name in class.
				"pinentry",
			},
			class = {
				"Arandr",
				"Blueman-manager",
				"Gpick",
				"Kruler",
				"MessageWin", -- kalarm.
				"Sxiv",
				"Tor Browser", -- Needs a fixed window size to avoid fingerprinting by screen size.
				"Wpa_gui",
				"veromix",
				"xtightvncviewer",
				"awakened-poe-trade",
				"Pavucontrol",
			},

			-- Note that the name property shown in xprop might be set slightly after creation of the client
			-- and the name shown there might not match defined rules here.
			name = {
				"Event Tester", -- xev.
			},
			role = {
				"AlarmWindow", -- Thunderbird's calendar.
				"ConfigManager", -- Thunderbird's about:config.
				"pop-up", -- e.g. Google Chrome's (detached) Developer Tools.
			},
		},
		properties = { floating = true, placement = awful.placement.centered },
	},

	{
		rule = {
			class = "discord",
		},
		properties = {
			tag = "10",
			screen = twoScreens and 2 or 1,
		},
	},
	{

		rule = {
			class = "TelegramDesktop",
		},
		properties = {
			tag = "9",
			screen = twoScreens and 2 or 1,
		},
	},

	-- Add titlebars to normal clients and dialogs
	{ rule_any = { type = { "normal", "dialog" } }, properties = { titlebars_enabled = true } },
	{
		rule_any = {
			class = { "awakened-poe-trade", "poe-overlay" },
		},
		properties = {
			y = 0,
			screen = 1,
			height = 1080,
			width = 1200,
		},
	},
	-- Set Firefox to always map on the tag named "2" on screen 1.
	-- { rule = { class = "Firefox" },
	--   properties = { screen = 1, tag = "2" } },
}
-- }}}
--
