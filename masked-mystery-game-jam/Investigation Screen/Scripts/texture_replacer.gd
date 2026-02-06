extends Node
class_name TextureReplacer

var investigation_textures = InvestigationTextures.new()

func switch_to_yellow(clock, mirror, glass, knife, cat, carpet):
	clear_textures(clock, mirror, glass, knife, cat, carpet)
	
	# Update clock textures
	clock.texture_normal = investigation_textures.clock_early_normal
	clock.texture_hover = investigation_textures.clock_early_selected
	
	# Update mirror textures
	mirror.texture_normal = investigation_textures.mirror_dirty_normal
	mirror.texture_hover = investigation_textures.mirror_dirty_selected
	
	# Update glass textures
	glass.texture_normal = investigation_textures.glass_half_normal
	glass.texture_hover = investigation_textures.glass_half_selected
	
	# Update knife textures
	knife.texture_normal = investigation_textures.knife_dry_normal
	knife.texture_hover = investigation_textures.knife_dry_selected
	
	# Update cat textures
	cat.texture_normal = investigation_textures.cat_sleep_normal
	cat.texture_hover = investigation_textures.cat_sleep_selected
	
	# Update carpet textures
	carpet.texture_normal = investigation_textures.carpet_flat_normal
	carpet.texture_hover = investigation_textures.carpet_flat_selected


func switch_to_red(clock, mirror, glass, knife, cat, carpet):
	clear_textures(clock, mirror, glass, knife, cat, carpet)
	
	# Update clock textures
	clock.texture_normal = investigation_textures.clock_early_normal
	clock.texture_hover = investigation_textures.clock_early_selected
	
	# Update mirror textures
	mirror.texture_normal = investigation_textures.mirror_dirty_normal
	mirror.texture_hover = investigation_textures.mirror_dirty_selected
	
	# Update glass textures
	glass.texture_normal = investigation_textures.glass_empty_normal
	glass.texture_hover = investigation_textures.glass_empty_selected
	
	# Update knife textures
	knife.texture_normal = investigation_textures.knife_dry_normal
	knife.texture_hover = investigation_textures.knife_dry_selected
	
	# Update cat textures
	cat.texture_normal = investigation_textures.cat_gone_normal
	cat.texture_hover = investigation_textures.cat_gone_selected
	
	# Update carpet textures
	carpet.texture_normal = investigation_textures.carpet_stain_normal
	carpet.texture_hover = investigation_textures.carpet_stain_selected


func switch_to_blue(clock, mirror, glass, knife, cat, carpet):
	clear_textures(clock, mirror, glass, knife, cat, carpet)
	
	# Update clock textures
	clock.texture_normal = investigation_textures.clock_later_normal
	clock.texture_hover = investigation_textures.clock_later_selected
	
	# Update mirror textures
	mirror.texture_normal = investigation_textures.mirror_clean_normal
	mirror.texture_hover = investigation_textures.mirror_clean_selected
	
	# Update glass textures
	glass.texture_normal = investigation_textures.glass_full_normal
	glass.texture_hover = investigation_textures.glass_full_selected
	
	# Update knife textures
	knife.texture_normal = investigation_textures.knife_wet_normal
	knife.texture_hover = investigation_textures.knife_wet_selected
	
	# Update cat textures
	cat.texture_normal = investigation_textures.cat_awake_normal
	cat.texture_hover = investigation_textures.cat_awake_selected
	
	# Update carpet textures
	carpet.texture_normal = investigation_textures.carpet_crumple_normal
	carpet.texture_hover  = investigation_textures.carpet_crumple_selected


func clear_textures(clock, mirror, glass, knife, cat, carpet):
	# Update clock textures
	clock.texture_normal = null 
	clock.texture_hover = null 
	
	# Update mirror textures
	mirror.texture_normal = null 
	mirror.texture_hover = null 
	
	# Update glass textures
	glass.texture_normal = null 
	glass.texture_hover = null 
	
	# Update knife textures
	knife.texture_normal = null 
	knife.texture_hover = null 
	
	# Update cat textures
	cat.texture_normal = null 
	cat.texture_hover = null 
	
	# Update carpet textures
	carpet.texture_normal = null 
	carpet.texture_hover = null 
