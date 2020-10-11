if not armor.update_skin then
	armor.update_skin = function(self, name)
		minetest.after(0, function()
			local pplayer = minetest.get_player_by_name(name)
			if pplayer then
				self.textures[name].skin = self:get_player_skin(name)
				self:set_player_armor(pplayer)
			end
		end)
	end
end