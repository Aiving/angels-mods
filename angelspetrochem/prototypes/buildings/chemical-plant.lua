data:extend({
  {
    type = "item",
    name = "angels-chemical-plant",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/chemical-plant.png",
        icon_size = 32,
      },
    }, 1, angelsmods.petrochem.number_tint),
    subgroup = "petrochem-buildings-chemical-plant",
    order = "a[regular]-b[angel]-a",
    place_result = "angels-chemical-plant",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-chemical-plant",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/chemical-plant.png",
        icon_size = 32,
      },
    }, 1, angelsmods.petrochem.number_tint),
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "angels-chemical-plant" },
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    fast_replaceable_group = "angels-chemical-plant",
    next_upgrade = "angels-chemical-plant-2",
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    crafting_speed = 1.75,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 1.8 },
    },
    energy_usage = "250kW",
    ingredient_count = 4,
    crafting_categories = { "chemistry" },
    module_slots = 1,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    graphics_set = {
      animation = {
        filename = "__angelspetrochemgraphics__/graphics/entity/chemical-plant/chemical-plant.png",
        width = 160,
        height = 160,
        frame_count = 1,
        line_length = 1,
        shift = { 0, 0 },
      },
      working_visualisations = {
        {
          apply_recipe_tint = "primary",
          animation = {
            filename = "__angelspetrochemgraphics__/graphics/entity/chemical-plant/mixer-tint.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = { 0, 0 },
            animation_speed = 0.5,
          },
        },
        {
          animation = {
            filename = "__angelspetrochemgraphics__/graphics/entity/chemical-plant/mixer-overlay.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = { 0, 0 },
            animation_speed = 0.5,
          },
        },
        {
          apply_recipe_tint = "secondary",
          animation = {
            filename = "__angelspetrochemgraphics__/graphics/entity/chemical-plant/pipe-tint.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = { 0, 0 },
            animation_speed = 0.5,
          },
        },
        {
          animation = {
            filename = "__angelspetrochemgraphics__/graphics/entity/chemical-plant/pipe-overlay.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = { 0, 0 },
            animation_speed = 0.5,
          },
        },
      },
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = {
        {
          filename = "__base__/sound/chemical-plant-1.ogg",
          volume = 0.5,
        },
        {
          filename = "__base__/sound/chemical-plant-2.ogg",
          volume = 0.5,
        },
        {
          filename = "__base__/sound/chemical-plant-3.ogg",
          volume = 0.5,
        },
      },
      --max_sounds_per_type = 3,
      --idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
      apparent_volume = 1.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20,
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {
          { flow_direction = "input", position = { -1, -1.4 }, direction = defines.direction.south },
        },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 1, -1.4 }, direction = defines.direction.south } },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { -1, 1.4 }, direction = defines.direction.north },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = { { flow_direction = "output", position = { 1, 1.4 }, direction = defines.direction.north } },
      },
    },
  },
  {
    type = "item",
    name = "angels-chemical-plant-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/chemical-plant.png",
        icon_size = 32,
      },
    }, 2, angelsmods.petrochem.number_tint),
    subgroup = "petrochem-buildings-chemical-plant",
    order = "a[regular]-b[angel]-b",
    place_result = "angels-chemical-plant-2",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-chemical-plant-2",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/chemical-plant.png",
        icon_size = 32,
      },
    }, 2, angelsmods.petrochem.number_tint),
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "angels-chemical-plant-2" },
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    fast_replaceable_group = "angels-chemical-plant",
    next_upgrade = "angels-chemical-plant-3",
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    crafting_speed = 2.25,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 2.4 },
    },
    energy_usage = "300kW",
    ingredient_count = 4,
    crafting_categories = { "chemistry" },
    module_slots = 2,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    graphics_set = {
      animation = {
        filename = "__angelspetrochemgraphics__/graphics/entity/chemical-plant/chemical-plant.png",
        width = 160,
        height = 160,
        frame_count = 1,
        line_length = 1,
        shift = { 0, 0 },
      },
      working_visualisations = {
        {
          apply_recipe_tint = "primary",
          animation = {
            filename = "__angelspetrochemgraphics__/graphics/entity/chemical-plant/mixer-tint.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = { 0, 0 },
            animation_speed = 0.5,
          },
        },
        {
          animation = {
            filename = "__angelspetrochemgraphics__/graphics/entity/chemical-plant/mixer-overlay.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = { 0, 0 },
            animation_speed = 0.5,
          },
        },
        {
          apply_recipe_tint = "secondary",
          animation = {
            filename = "__angelspetrochemgraphics__/graphics/entity/chemical-plant/pipe-tint.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = { 0, 0 },
            animation_speed = 0.5,
          },
        },
        {
          animation = {
            filename = "__angelspetrochemgraphics__/graphics/entity/chemical-plant/pipe-overlay.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = { 0, 0 },
            animation_speed = 0.5,
          },
        },
      },
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = {
        {
          filename = "__base__/sound/chemical-plant-1.ogg",
          volume = 0.5,
        },
        {
          filename = "__base__/sound/chemical-plant-2.ogg",
          volume = 0.5,
        },
        {
          filename = "__base__/sound/chemical-plant-3.ogg",
          volume = 0.5,
        },
      },
      --max_sounds_per_type = 3,
      --idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
      apparent_volume = 1.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20,
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {
          { flow_direction = "input", position = { -1, -1.4 }, direction = defines.direction.south },
        },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 1, -1.4 }, direction = defines.direction.south } },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { -1, 1.4 }, direction = defines.direction.north },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = { { flow_direction = "output", position = { 1, 1.4 }, direction = defines.direction.north } },
      },
    },
  },
  {
    type = "item",
    name = "angels-chemical-plant-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/chemical-plant.png",
        icon_size = 32,
      },
    }, 3, angelsmods.petrochem.number_tint),
    subgroup = "petrochem-buildings-chemical-plant",
    order = "a[regular]-b[angel]-c",
    place_result = "angels-chemical-plant-3",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-chemical-plant-3",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/chemical-plant.png",
        icon_size = 32,
      },
    }, 3, angelsmods.petrochem.number_tint),
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "angels-chemical-plant-3" },
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    fast_replaceable_group = "angels-chemical-plant",
    next_upgrade = "angels-chemical-plant-4",
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    crafting_speed = 2.75,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 3 },
    },
    energy_usage = "350kW",
    ingredient_count = 4,
    crafting_categories = { "chemistry" },
    module_slots = 3,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    graphics_set = {
      animation = {
        filename = "__angelspetrochemgraphics__/graphics/entity/chemical-plant/chemical-plant.png",
        width = 160,
        height = 160,
        frame_count = 1,
        line_length = 1,
        shift = { 0, 0 },
      },
      working_visualisations = {
        {
          apply_recipe_tint = "primary",
          animation = {
            filename = "__angelspetrochemgraphics__/graphics/entity/chemical-plant/mixer-tint.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = { 0, 0 },
            animation_speed = 0.5,
          },
        },
        {
          animation = {
            filename = "__angelspetrochemgraphics__/graphics/entity/chemical-plant/mixer-overlay.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = { 0, 0 },
            animation_speed = 0.5,
          },
        },
        {
          apply_recipe_tint = "secondary",
          animation = {
            filename = "__angelspetrochemgraphics__/graphics/entity/chemical-plant/pipe-tint.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = { 0, 0 },
            animation_speed = 0.5,
          },
        },
        {
          animation = {
            filename = "__angelspetrochemgraphics__/graphics/entity/chemical-plant/pipe-overlay.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = { 0, 0 },
            animation_speed = 0.5,
          },
        },
      },
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = {
        {
          filename = "__base__/sound/chemical-plant-1.ogg",
          volume = 0.5,
        },
        {
          filename = "__base__/sound/chemical-plant-2.ogg",
          volume = 0.5,
        },
        {
          filename = "__base__/sound/chemical-plant-3.ogg",
          volume = 0.5,
        },
      },
      --max_sounds_per_type = 3,
      --idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
      apparent_volume = 1.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20,
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {
          { flow_direction = "input", position = { -1, -1.4 }, direction = defines.direction.south },
        },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 1, -1.4 }, direction = defines.direction.south } },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { -1, 1.4 }, direction = defines.direction.north },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = { { flow_direction = "output", position = { 1, 1.4 }, direction = defines.direction.north } },
      },
    },
  },
  {
    type = "item",
    name = "angels-chemical-plant-4",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/chemical-plant.png",
        icon_size = 32,
      },
    }, 4, angelsmods.petrochem.number_tint),
    subgroup = "petrochem-buildings-chemical-plant",
    order = "a[regular]-b[angel]-d",
    place_result = "angels-chemical-plant-4",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "angels-chemical-plant-4",
    icons = angelsmods.functions.add_number_icon_layer({
      {
        icon = "__angelspetrochemgraphics__/graphics/icons/chemical-plant.png",
        icon_size = 32,
      },
    }, 4, angelsmods.petrochem.number_tint),
    flags = { "placeable-neutral", "placeable-player", "player-creation" },
    minable = { mining_time = 0.5, result = "angels-chemical-plant-4" },
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    fast_replaceable_group = "angels-chemical-plant",
    collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
    selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
    crafting_speed = 3.25,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = { pollution = 3.6 },
    },
    energy_usage = "400kW",
    ingredient_count = 4,
    crafting_categories = { "chemistry" },
    module_slots = 4,
    allowed_effects = { "consumption", "speed", "productivity", "pollution" },
    graphics_set = {
      animation = {
        filename = "__angelspetrochemgraphics__/graphics/entity/chemical-plant/chemical-plant.png",
        width = 160,
        height = 160,
        frame_count = 1,
        line_length = 1,
        shift = { 0, 0 },
      },
      working_visualisations = {
        {
          apply_recipe_tint = "primary",
          animation = {
            filename = "__angelspetrochemgraphics__/graphics/entity/chemical-plant/mixer-tint.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = { 0, 0 },
            animation_speed = 0.5,
          },
        },
        {
          animation = {
            filename = "__angelspetrochemgraphics__/graphics/entity/chemical-plant/mixer-overlay.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = { 0, 0 },
            animation_speed = 0.5,
          },
        },
        {
          apply_recipe_tint = "secondary",
          animation = {
            filename = "__angelspetrochemgraphics__/graphics/entity/chemical-plant/pipe-tint.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = { 0, 0 },
            animation_speed = 0.5,
          },
        },
        {
          animation = {
            filename = "__angelspetrochemgraphics__/graphics/entity/chemical-plant/pipe-overlay.png",
            line_length = 6,
            frame_count = 36,
            width = 160,
            height = 160,
            shift = { 0, 0 },
            animation_speed = 0.5,
          },
        },
      },
    },
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {
      sound = {
        {
          filename = "__base__/sound/chemical-plant-1.ogg",
          volume = 0.5,
        },
        {
          filename = "__base__/sound/chemical-plant-2.ogg",
          volume = 0.5,
        },
        {
          filename = "__base__/sound/chemical-plant-3.ogg",
          volume = 0.5,
        },
      },
      --max_sounds_per_type = 3,
      --idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.3 },
      apparent_volume = 1.5,
      fade_in_ticks = 4,
      fade_out_ticks = 20,
    },
    fluid_boxes = {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = {
          { flow_direction = "input", position = { -1, -1.4 }, direction = defines.direction.south },
        },
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        volume = 1000,
        pipe_connections = { { flow_direction = "input", position = { 1, -1.4 }, direction = defines.direction.south } },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = {
          { flow_direction = "output", position = { -1, 1.4 }, direction = defines.direction.north },
        },
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        volume = 100,
        pipe_connections = { { flow_direction = "output", position = { 1, 1.4 }, direction = defines.direction.north } },
      },
    },
  },
})
