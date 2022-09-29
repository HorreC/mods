data:extend(
  {
    --SMALL REFINERY
    {
      type = "item",
      name = "gas-refinery-small",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/gas-refinery-small.png",
            icon_size = 64, icon_mipmaps = 4,
          }
        },
        1, angelsmods.petrochem.number_tint),
      subgroup = "petrochem-buildings-gas-refinery",
      order = "a[gas-refinery-small]-a",
      place_result = "gas-refinery-small",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "gas-refinery-small",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/gas-refinery-small.png",
            icon_size = 64, icon_mipmaps = 4,
          }
        },
        1, angelsmods.petrochem.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "gas-refinery-small"},
      fast_replaceable_group = "gas-refinery-small",
      next_upgrade = "gas-refinery-small-2",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      drawing_box = {{-2.5, -5.75}, {2.5, 2.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"gas-refining"},
      crafting_speed = 1.5,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.03 * 60
      },
      energy_usage = "300kW",
      ingredient_count = 4,
      animation = {
        north = {
          layers = {
            {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-base.png",
              priority = "extra-high",
              width = 167,
              height = 278,
              frame_count = 1,
              shift = util.by_pixel(-0.5, -47),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-base.png",
                priority = "extra-high",
                width = 334,
                height = 553,
                frame_count = 1,
                shift = util.by_pixel(0, -48),
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-shadow.png",
              priority = "extra-high",
              width = 255,
              height = 171,
              frame_count = 1,
              shift = util.by_pixel(44, 7),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-shadow.png",
                priority = "extra-high",
                width = 508,
                height = 338,
                frame_count = 1,
                shift = util.by_pixel(43.5, 6.5),
                scale = 0.5,
              } or nil
            }
          }
        },
        east = {
          layers = {
            {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-base.png",
              priority = "extra-high",
              width = 167,
              height = 278,
              x = 167,
              frame_count = 1,
              shift = util.by_pixel(-0.5, -47),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-base.png",
                priority = "extra-high",
                width = 334,
                height = 553,
                x = 334,
                frame_count = 1,
                shift = util.by_pixel(0, -48),
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-shadow.png",
              priority = "extra-high",
              width = 255,
              height = 171,
              x = 255,
              frame_count = 1,
              shift = util.by_pixel(44, 7),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-shadow.png",
                priority = "extra-high",
                width = 508,
                height = 338,
                x = 508,
                frame_count = 1,
                shift = util.by_pixel(43.5, 6.5),
                scale = 0.5,
              } or nil
            }
          }
        },
        south = {
          layers = {
            {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-base.png",
              priority = "extra-high",
              width = 167,
              height = 278,
              x = 334,
              frame_count = 1,
              shift = util.by_pixel(-0.5, -47),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-base.png",
                priority = "extra-high",
                width = 334,
                height = 553,
                x = 668,
                frame_count = 1,
                shift = util.by_pixel(0, -48),
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-shadow.png",
              priority = "extra-high",
              width = 255,
              height = 171,
              x = 510,
              frame_count = 1,
              shift = util.by_pixel(44, 7),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-shadow.png",
                priority = "extra-high",
                width = 508,
                height = 338,
                x = 1016,
                frame_count = 1,
                shift = util.by_pixel(43.5, 6.5),
                scale = 0.5,
              } or nil
            }
          }
        },
        west = {
          layers = {
            {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-base.png",
              priority = "extra-high",
              width = 167,
              height = 278,
              x = 501,
              frame_count = 1,
              shift = util.by_pixel(-0.5, -47),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-base.png",
                priority = "extra-high",
                width = 334,
                height = 553,
                x = 1002,
                frame_count = 1,
                shift = util.by_pixel(0, -48),
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-shadow.png",
              priority = "extra-high",
              width = 255,
              height = 171,
              x = 765,
              frame_count = 1,
              shift = util.by_pixel(44, 7),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-shadow.png",
                priority = "extra-high",
                width = 508,
                height = 338,
                x = 1524,
                frame_count = 1,
                shift = util.by_pixel(43.5, 6.5),
                scale = 0.5,
              } or nil
            }
          }
        }
      },
      working_visualisations = {
        {
          fadeout = true,
          constant_speed = true,
          north_position = util.by_pixel(-57.5, -152.5),
          east_position = util.by_pixel(49.5, -189.5),
          south_position = util.by_pixel(59, -69),
          west_position = util.by_pixel(-50, -62.5),
          animation = {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
            line_length = 10,
            width = 20,
            height = 40,
            frame_count = 60,
            animation_speed = 0.75,
            draw_as_glow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
              line_length = 10,
              width = 40,
              height = 81,
              frame_count = 60,
              animation_speed = 0.75,
              draw_as_glow = true,
              scale = 0.5,
            } or nil
          },
        },
        {
          fadeout = true,
          north_animation = {
            filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-light.png",
            priority = "extra-high",
            width = 167,
            height = 278,
            frame_count = 1,
            shift = util.by_pixel(-0.5, -47),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-light.png",
              priority = "extra-high",
              width = 334,
              height = 553,
              frame_count = 1,
              shift = util.by_pixel(0, -48),
              blend_mode = "additive-soft",
              draw_as_glow = true,
              scale = 0.5,
            } or nil
          },
          east_animation = {
            filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-light.png",
            priority = "extra-high",
            width = 167,
            height = 278,
            x = 167,
            frame_count = 1,
            shift = util.by_pixel(-0.5, -47),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-light.png",
              priority = "extra-high",
              width = 334,
              height = 553,
              x = 334,
              frame_count = 1,
              shift = util.by_pixel(0, -48),
              blend_mode = "additive-soft",
              draw_as_glow = true,
              scale = 0.5,
            } or nil
          },
          south_animation = {
            filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-light.png",
            priority = "extra-high",
            width = 167,
            height = 278,
            x = 334,
            frame_count = 1,
            shift = util.by_pixel(-0.5, -47),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-light.png",
              priority = "extra-high",
              width = 334,
              height = 553,
              x = 668,
              frame_count = 1,
              shift = util.by_pixel(0, -48),
              blend_mode = "additive-soft",
              draw_as_glow = true,
              scale = 0.5,
            } or nil
          },
          west_animation = {
            filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-light.png",
            priority = "extra-high",
            width = 167,
            height = 278,
            x = 501,
            frame_count = 1,
            shift = util.by_pixel(-0.5, -47),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-light.png",
              priority = "extra-high",
              width = 334,
              height = 553,
              x = 1002,
              frame_count = 1,
              shift = util.by_pixel(0, -48),
              blend_mode = "additive-soft",
              draw_as_glow = true,
              scale = 0.5,
            } or nil
          },
        },
        {
          always_draw = true,
          north_animation = {
            layers = {
              {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                shift = {-2, -2},
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  shift = {-2, -2},
                  scale = 0.5,
                } or nil
              },
              {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                shift = {0, -2},
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  shift = {0, -2},
                  scale = 0.5,
                } or nil
              },
              {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                shift = {2, -2},
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  shift = {2, -2},
                  scale = 0.5,
                } or nil
              },
            }
          },
          south_animation = {
            layers = {
              {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                shift = {-2, 2},
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  shift = {-2, 2},
                  scale = 0.5,
                } or nil
              },
              {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                shift = {0, 2},
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  shift = {0, 2},
                  scale = 0.5,
                } or nil
              },
              {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                shift = {2, 2},
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  shift = {2, 2},
                  scale = 0.5,
                } or nil
              },
            }
          }
        },
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 0.50,
          base_level = -1,
          pipe_connections = {{type = "input", position = {0, 3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {-2, -3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {0, -3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {2, -3}}}
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelspetrochem__/sound/gas-refinery.ogg", volume = 0.5},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "gas-refinery-small-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/gas-refinery-small.png",
            icon_size = 64, icon_mipmaps = 4,
          }
        },
        2, angelsmods.petrochem.number_tint),
      subgroup = "petrochem-buildings-gas-refinery",
      order = "a[gas-refinery-small]-b",
      place_result = "gas-refinery-small-2",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "gas-refinery-small-2",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/gas-refinery-small.png",
            icon_size = 64, icon_mipmaps = 4,
          }
        },
        2, angelsmods.petrochem.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "gas-refinery-small-2"},
      fast_replaceable_group = "gas-refinery-small",
      next_upgrade = "gas-refinery-small-3",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      drawing_box = {{-2.5, -5.75}, {2.5, 2.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"gas-refining"},
      crafting_speed = 2,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.04 * 60
      },
      energy_usage = "350kW",
      ingredient_count = 4,
      animation = {
        north = {
          layers = {
            {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-base.png",
              priority = "extra-high",
              width = 167,
              height = 278,
              frame_count = 1,
              shift = util.by_pixel(-0.5, -47),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-base.png",
                priority = "extra-high",
                width = 334,
                height = 553,
                frame_count = 1,
                shift = util.by_pixel(0, -48),
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-shadow.png",
              priority = "extra-high",
              width = 255,
              height = 171,
              frame_count = 1,
              shift = util.by_pixel(44, 7),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-shadow.png",
                priority = "extra-high",
                width = 508,
                height = 338,
                frame_count = 1,
                shift = util.by_pixel(43.5, 6.5),
                scale = 0.5,
              } or nil
            }
          }
        },
        east = {
          layers = {
            {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-base.png",
              priority = "extra-high",
              width = 167,
              height = 278,
              x = 167,
              frame_count = 1,
              shift = util.by_pixel(-0.5, -47),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-base.png",
                priority = "extra-high",
                width = 334,
                height = 553,
                x = 334,
                frame_count = 1,
                shift = util.by_pixel(0, -48),
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-shadow.png",
              priority = "extra-high",
              width = 255,
              height = 171,
              x = 255,
              frame_count = 1,
              shift = util.by_pixel(44, 7),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-shadow.png",
                priority = "extra-high",
                width = 508,
                height = 338,
                x = 508,
                frame_count = 1,
                shift = util.by_pixel(43.5, 6.5),
                scale = 0.5,
              } or nil
            }
          }
        },
        south = {
          layers = {
            {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-base.png",
              priority = "extra-high",
              width = 167,
              height = 278,
              x = 334,
              frame_count = 1,
              shift = util.by_pixel(-0.5, -47),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-base.png",
                priority = "extra-high",
                width = 334,
                height = 553,
                x = 668,
                frame_count = 1,
                shift = util.by_pixel(0, -48),
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-shadow.png",
              priority = "extra-high",
              width = 255,
              height = 171,
              x = 510,
              frame_count = 1,
              shift = util.by_pixel(44, 7),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-shadow.png",
                priority = "extra-high",
                width = 508,
                height = 338,
                x = 1016,
                frame_count = 1,
                shift = util.by_pixel(43.5, 6.5),
                scale = 0.5,
              } or nil
            }
          }
        },
        west = {
          layers = {
            {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-base.png",
              priority = "extra-high",
              width = 167,
              height = 278,
              x = 501,
              frame_count = 1,
              shift = util.by_pixel(-0.5, -47),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-base.png",
                priority = "extra-high",
                width = 334,
                height = 553,
                x = 1002,
                frame_count = 1,
                shift = util.by_pixel(0, -48),
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-shadow.png",
              priority = "extra-high",
              width = 255,
              height = 171,
              x = 765,
              frame_count = 1,
              shift = util.by_pixel(44, 7),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-shadow.png",
                priority = "extra-high",
                width = 508,
                height = 338,
                x = 1524,
                frame_count = 1,
                shift = util.by_pixel(43.5, 6.5),
                scale = 0.5,
              } or nil
            }
          }
        }
      },
      working_visualisations = {
        {
          fadeout = true,
          constant_speed = true,
          north_position = util.by_pixel(-57.5, -152.5),
          east_position = util.by_pixel(49.5, -189.5),
          south_position = util.by_pixel(59, -69),
          west_position = util.by_pixel(-50, -62.5),
          animation = {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
            line_length = 10,
            width = 20,
            height = 40,
            frame_count = 60,
            animation_speed = 0.75,
            draw_as_glow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
              line_length = 10,
              width = 40,
              height = 81,
              frame_count = 60,
              animation_speed = 0.75,
              draw_as_glow = true,
              scale = 0.5,
            } or nil
          },
        },
        {
          fadeout = true,
          north_animation = {
            filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-light.png",
            priority = "extra-high",
            width = 167,
            height = 278,
            frame_count = 1,
            shift = util.by_pixel(-0.5, -47),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-light.png",
              priority = "extra-high",
              width = 334,
              height = 553,
              frame_count = 1,
              shift = util.by_pixel(0, -48),
              blend_mode = "additive-soft",
              draw_as_glow = true,
              scale = 0.5,
            } or nil
          },
          east_animation = {
            filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-light.png",
            priority = "extra-high",
            width = 167,
            height = 278,
            x = 167,
            frame_count = 1,
            shift = util.by_pixel(-0.5, -47),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-light.png",
              priority = "extra-high",
              width = 334,
              height = 553,
              x = 334,
              frame_count = 1,
              shift = util.by_pixel(0, -48),
              blend_mode = "additive-soft",
              draw_as_glow = true,
              scale = 0.5,
            } or nil
          },
          south_animation = {
            filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-light.png",
            priority = "extra-high",
            width = 167,
            height = 278,
            x = 334,
            frame_count = 1,
            shift = util.by_pixel(-0.5, -47),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-light.png",
              priority = "extra-high",
              width = 334,
              height = 553,
              x = 668,
              frame_count = 1,
              shift = util.by_pixel(0, -48),
              blend_mode = "additive-soft",
              draw_as_glow = true,
              scale = 0.5,
            } or nil
          },
          west_animation = {
            filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-light.png",
            priority = "extra-high",
            width = 167,
            height = 278,
            x = 501,
            frame_count = 1,
            shift = util.by_pixel(-0.5, -47),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-light.png",
              priority = "extra-high",
              width = 334,
              height = 553,
              x = 1002,
              frame_count = 1,
              shift = util.by_pixel(0, -48),
              blend_mode = "additive-soft",
              draw_as_glow = true,
              scale = 0.5,
            } or nil
          },
        },
        {
          always_draw = true,
          north_animation = {
            layers = {
              {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                shift = {-2, -2},
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  shift = {-2, -2},
                  scale = 0.5,
                } or nil
              },
              {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                shift = {0, -2},
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  shift = {0, -2},
                  scale = 0.5,
                } or nil
              },
              {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                shift = {2, -2},
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  shift = {2, -2},
                  scale = 0.5,
                } or nil
              },
            }
          },
          south_animation = {
            layers = {
              {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                shift = {-2, 2},
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  shift = {-2, 2},
                  scale = 0.5,
                } or nil
              },
              {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                shift = {0, 2},
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  shift = {0, 2},
                  scale = 0.5,
                } or nil
              },
              {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                shift = {2, 2},
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  shift = {2, 2},
                  scale = 0.5,
                } or nil
              },
            }
          }
        },
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 0.50,
          base_level = -1,
          pipe_connections = {{type = "input", position = {0, 3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {-2, -3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {0, -3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {2, -3}}}
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelspetrochem__/sound/gas-refinery.ogg", volume = 0.5},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "gas-refinery-small-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/gas-refinery-small.png",
            icon_size = 64, icon_mipmaps = 4,
          }
        },
        3, angelsmods.petrochem.number_tint),
      subgroup = "petrochem-buildings-gas-refinery",
      order = "a[gas-refinery-small]-c",
      place_result = "gas-refinery-small-3",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "gas-refinery-small-3",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/gas-refinery-small.png",
            icon_size = 64, icon_mipmaps = 4,
          }
        },
        3, angelsmods.petrochem.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "gas-refinery-small-3"},
      fast_replaceable_group = "gas-refinery-small",
      next_upgrade = "gas-refinery-small-4",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      drawing_box = {{-2.5, -5.75}, {2.5, 2.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"gas-refining"},
      crafting_speed = 2.5,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.05 * 60
      },
      energy_usage = "400kW",
      ingredient_count = 4,
      animation = {
        north = {
          layers = {
            {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-base.png",
              priority = "extra-high",
              width = 167,
              height = 278,
              frame_count = 1,
              shift = util.by_pixel(-0.5, -47),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-base.png",
                priority = "extra-high",
                width = 334,
                height = 553,
                frame_count = 1,
                shift = util.by_pixel(0, -48),
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-shadow.png",
              priority = "extra-high",
              width = 255,
              height = 171,
              frame_count = 1,
              shift = util.by_pixel(44, 7),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-shadow.png",
                priority = "extra-high",
                width = 508,
                height = 338,
                frame_count = 1,
                shift = util.by_pixel(43.5, 6.5),
                scale = 0.5,
              } or nil
            }
          }
        },
        east = {
          layers = {
            {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-base.png",
              priority = "extra-high",
              width = 167,
              height = 278,
              x = 167,
              frame_count = 1,
              shift = util.by_pixel(-0.5, -47),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-base.png",
                priority = "extra-high",
                width = 334,
                height = 553,
                x = 334,
                frame_count = 1,
                shift = util.by_pixel(0, -48),
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-shadow.png",
              priority = "extra-high",
              width = 255,
              height = 171,
              x = 255,
              frame_count = 1,
              shift = util.by_pixel(44, 7),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-shadow.png",
                priority = "extra-high",
                width = 508,
                height = 338,
                x = 508,
                frame_count = 1,
                shift = util.by_pixel(43.5, 6.5),
                scale = 0.5,
              } or nil
            }
          }
        },
        south = {
          layers = {
            {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-base.png",
              priority = "extra-high",
              width = 167,
              height = 278,
              x = 334,
              frame_count = 1,
              shift = util.by_pixel(-0.5, -47),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-base.png",
                priority = "extra-high",
                width = 334,
                height = 553,
                x = 668,
                frame_count = 1,
                shift = util.by_pixel(0, -48),
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-shadow.png",
              priority = "extra-high",
              width = 255,
              height = 171,
              x = 510,
              frame_count = 1,
              shift = util.by_pixel(44, 7),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-shadow.png",
                priority = "extra-high",
                width = 508,
                height = 338,
                x = 1016,
                frame_count = 1,
                shift = util.by_pixel(43.5, 6.5),
                scale = 0.5,
              } or nil
            }
          }
        },
        west = {
          layers = {
            {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-base.png",
              priority = "extra-high",
              width = 167,
              height = 278,
              x = 501,
              frame_count = 1,
              shift = util.by_pixel(-0.5, -47),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-base.png",
                priority = "extra-high",
                width = 334,
                height = 553,
                x = 1002,
                frame_count = 1,
                shift = util.by_pixel(0, -48),
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-shadow.png",
              priority = "extra-high",
              width = 255,
              height = 171,
              x = 765,
              frame_count = 1,
              shift = util.by_pixel(44, 7),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-shadow.png",
                priority = "extra-high",
                width = 508,
                height = 338,
                x = 1524,
                frame_count = 1,
                shift = util.by_pixel(43.5, 6.5),
                scale = 0.5,
              } or nil
            }
          }
        }
      },
      working_visualisations = {
        {
          fadeout = true,
          constant_speed = true,
          north_position = util.by_pixel(-57.5, -152.5),
          east_position = util.by_pixel(49.5, -189.5),
          south_position = util.by_pixel(59, -69),
          west_position = util.by_pixel(-50, -62.5),
          animation = {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
            line_length = 10,
            width = 20,
            height = 40,
            frame_count = 60,
            animation_speed = 0.75,
            draw_as_glow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
              line_length = 10,
              width = 40,
              height = 81,
              frame_count = 60,
              animation_speed = 0.75,
              draw_as_glow = true,
              scale = 0.5,
            } or nil
          },
        },
        {
          fadeout = true,
          north_animation = {
            filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-light.png",
            priority = "extra-high",
            width = 167,
            height = 278,
            frame_count = 1,
            shift = util.by_pixel(-0.5, -47),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-light.png",
              priority = "extra-high",
              width = 334,
              height = 553,
              frame_count = 1,
              shift = util.by_pixel(0, -48),
              blend_mode = "additive-soft",
              draw_as_glow = true,
              scale = 0.5,
            } or nil
          },
          east_animation = {
            filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-light.png",
            priority = "extra-high",
            width = 167,
            height = 278,
            x = 167,
            frame_count = 1,
            shift = util.by_pixel(-0.5, -47),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-light.png",
              priority = "extra-high",
              width = 334,
              height = 553,
              x = 334,
              frame_count = 1,
              shift = util.by_pixel(0, -48),
              blend_mode = "additive-soft",
              draw_as_glow = true,
              scale = 0.5,
            } or nil
          },
          south_animation = {
            filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-light.png",
            priority = "extra-high",
            width = 167,
            height = 278,
            x = 334,
            frame_count = 1,
            shift = util.by_pixel(-0.5, -47),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-light.png",
              priority = "extra-high",
              width = 334,
              height = 553,
              x = 668,
              frame_count = 1,
              shift = util.by_pixel(0, -48),
              blend_mode = "additive-soft",
              draw_as_glow = true,
              scale = 0.5,
            } or nil
          },
          west_animation = {
            filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-light.png",
            priority = "extra-high",
            width = 167,
            height = 278,
            x = 501,
            frame_count = 1,
            shift = util.by_pixel(-0.5, -47),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-light.png",
              priority = "extra-high",
              width = 334,
              height = 553,
              x = 1002,
              frame_count = 1,
              shift = util.by_pixel(0, -48),
              blend_mode = "additive-soft",
              draw_as_glow = true,
              scale = 0.5,
            } or nil
          },
        },
        {
          always_draw = true,
          north_animation = {
            layers = {
              {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                shift = {-2, -2},
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  shift = {-2, -2},
                  scale = 0.5,
                } or nil
              },
              {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                shift = {0, -2},
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  shift = {0, -2},
                  scale = 0.5,
                } or nil
              },
              {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                shift = {2, -2},
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  shift = {2, -2},
                  scale = 0.5,
                } or nil
              },
            }
          },
          south_animation = {
            layers = {
              {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                shift = {-2, 2},
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  shift = {-2, 2},
                  scale = 0.5,
                } or nil
              },
              {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                shift = {0, 2},
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  shift = {0, 2},
                  scale = 0.5,
                } or nil
              },
              {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                shift = {2, 2},
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  shift = {2, 2},
                  scale = 0.5,
                } or nil
              },
            }
          }
        },
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 0.50,
          base_level = -1,
          pipe_connections = {{type = "input", position = {0, 3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {-2, -3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {0, -3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {2, -3}}}
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelspetrochem__/sound/gas-refinery.ogg", volume = 0.5},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "gas-refinery-small-4",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/gas-refinery-small.png",
            icon_size = 64, icon_mipmaps = 4,
          }
        },
        4, angelsmods.petrochem.number_tint),
      subgroup = "petrochem-buildings-gas-refinery",
      order = "a[gas-refinery-small]-d",
      place_result = "gas-refinery-small-4",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "gas-refinery-small-4",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelspetrochem__/graphics/icons/gas-refinery-small.png",
            icon_size = 64, icon_mipmaps = 4,
          }
        },
        4, angelsmods.petrochem.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "gas-refinery-small-4"},
      fast_replaceable_group = "gas-refinery-small",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
      selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
      drawing_box = {{-2.5, -5.75}, {2.5, 2.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"gas-refining"},
      crafting_speed = 3,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06 * 60
      },
      energy_usage = "425kW",
      ingredient_count = 4,
      animation = {
        north = {
          layers = {
            {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-base.png",
              priority = "extra-high",
              width = 167,
              height = 278,
              frame_count = 1,
              shift = util.by_pixel(-0.5, -47),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-base.png",
                priority = "extra-high",
                width = 334,
                height = 553,
                frame_count = 1,
                shift = util.by_pixel(0, -48),
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-shadow.png",
              priority = "extra-high",
              width = 255,
              height = 171,
              frame_count = 1,
              shift = util.by_pixel(44, 7),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-shadow.png",
                priority = "extra-high",
                width = 508,
                height = 338,
                frame_count = 1,
                shift = util.by_pixel(43.5, 6.5),
                scale = 0.5,
              } or nil
            }
          }
        },
        east = {
          layers = {
            {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-base.png",
              priority = "extra-high",
              width = 167,
              height = 278,
              x = 167,
              frame_count = 1,
              shift = util.by_pixel(-0.5, -47),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-base.png",
                priority = "extra-high",
                width = 334,
                height = 553,
                x = 334,
                frame_count = 1,
                shift = util.by_pixel(0, -48),
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-shadow.png",
              priority = "extra-high",
              width = 255,
              height = 171,
              x = 255,
              frame_count = 1,
              shift = util.by_pixel(44, 7),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-shadow.png",
                priority = "extra-high",
                width = 508,
                height = 338,
                x = 508,
                frame_count = 1,
                shift = util.by_pixel(43.5, 6.5),
                scale = 0.5,
              } or nil
            }
          }
        },
        south = {
          layers = {
            {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-base.png",
              priority = "extra-high",
              width = 167,
              height = 278,
              x = 334,
              frame_count = 1,
              shift = util.by_pixel(-0.5, -47),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-base.png",
                priority = "extra-high",
                width = 334,
                height = 553,
                x = 668,
                frame_count = 1,
                shift = util.by_pixel(0, -48),
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-shadow.png",
              priority = "extra-high",
              width = 255,
              height = 171,
              x = 510,
              frame_count = 1,
              shift = util.by_pixel(44, 7),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-shadow.png",
                priority = "extra-high",
                width = 508,
                height = 338,
                x = 1016,
                frame_count = 1,
                shift = util.by_pixel(43.5, 6.5),
                scale = 0.5,
              } or nil
            }
          }
        },
        west = {
          layers = {
            {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-base.png",
              priority = "extra-high",
              width = 167,
              height = 278,
              x = 501,
              frame_count = 1,
              shift = util.by_pixel(-0.5, -47),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-base.png",
                priority = "extra-high",
                width = 334,
                height = 553,
                x = 1002,
                frame_count = 1,
                shift = util.by_pixel(0, -48),
                scale = 0.5,
              } or nil
            },
            {
              draw_as_shadow = true,
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-shadow.png",
              priority = "extra-high",
              width = 255,
              height = 171,
              x = 765,
              frame_count = 1,
              shift = util.by_pixel(44, 7),
              hr_version = angelsmods.trigger.enable_hq_graphics and {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-shadow.png",
                priority = "extra-high",
                width = 508,
                height = 338,
                x = 1524,
                frame_count = 1,
                shift = util.by_pixel(43.5, 6.5),
                scale = 0.5,
              } or nil
            }
          }
        }
      },
      working_visualisations = {
        {
          fadeout = true,
          constant_speed = true,
          north_position = util.by_pixel(-57.5, -152.5),
          east_position = util.by_pixel(49.5, -189.5),
          south_position = util.by_pixel(59, -69),
          west_position = util.by_pixel(-50, -62.5),
          animation = {
            filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
            line_length = 10,
            width = 20,
            height = 40,
            frame_count = 60,
            animation_speed = 0.75,
            draw_as_glow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
              line_length = 10,
              width = 40,
              height = 81,
              frame_count = 60,
              animation_speed = 0.75,
              draw_as_glow = true,
              scale = 0.5,
            } or nil
          },
        },
        {
          fadeout = true,
          north_animation = {
            filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-light.png",
            priority = "extra-high",
            width = 167,
            height = 278,
            frame_count = 1,
            shift = util.by_pixel(-0.5, -47),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-light.png",
              priority = "extra-high",
              width = 334,
              height = 553,
              frame_count = 1,
              shift = util.by_pixel(0, -48),
              blend_mode = "additive-soft",
              draw_as_glow = true,
              scale = 0.5,
            } or nil
          },
          east_animation = {
            filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-light.png",
            priority = "extra-high",
            width = 167,
            height = 278,
            x = 167,
            frame_count = 1,
            shift = util.by_pixel(-0.5, -47),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-light.png",
              priority = "extra-high",
              width = 334,
              height = 553,
              x = 334,
              frame_count = 1,
              shift = util.by_pixel(0, -48),
              blend_mode = "additive-soft",
              draw_as_glow = true,
              scale = 0.5,
            } or nil
          },
          south_animation = {
            filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-light.png",
            priority = "extra-high",
            width = 167,
            height = 278,
            x = 334,
            frame_count = 1,
            shift = util.by_pixel(-0.5, -47),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-light.png",
              priority = "extra-high",
              width = 334,
              height = 553,
              x = 668,
              frame_count = 1,
              shift = util.by_pixel(0, -48),
              blend_mode = "additive-soft",
              draw_as_glow = true,
              scale = 0.5,
            } or nil
          },
          west_animation = {
            filename = "__angelspetrochem__/graphics/entity/gas-refinery/gas-refinery-light.png",
            priority = "extra-high",
            width = 167,
            height = 278,
            x = 501,
            frame_count = 1,
            shift = util.by_pixel(-0.5, -47),
            blend_mode = "additive-soft",
            draw_as_glow = true,
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-gas-refinery-light.png",
              priority = "extra-high",
              width = 334,
              height = 553,
              x = 1002,
              frame_count = 1,
              shift = util.by_pixel(0, -48),
              blend_mode = "additive-soft",
              draw_as_glow = true,
              scale = 0.5,
            } or nil
          },
        },
        {
          always_draw = true,
          north_animation = {
            layers = {
              {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                shift = {-2, -2},
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  shift = {-2, -2},
                  scale = 0.5,
                } or nil
              },
              {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                shift = {0, -2},
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  shift = {0, -2},
                  scale = 0.5,
                } or nil
              },
              {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                shift = {2, -2},
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  shift = {2, -2},
                  scale = 0.5,
                } or nil
              },
            }
          },
          south_animation = {
            layers = {
              {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                shift = {-2, 2},
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  shift = {-2, 2},
                  scale = 0.5,
                } or nil
              },
              {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                shift = {0, 2},
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  shift = {0, 2},
                  scale = 0.5,
                } or nil
              },
              {
                draw_as_shadow = true,
                filename = "__angelspetrochem__/graphics/entity/gas-refinery/vertical-pipe-shadow-patch.png",
                priority = "high",
                width = 64,
                height = 64,
                repeat_count = 36,
                shift = {2, 2},
                hr_version = angelsmods.trigger.enable_hq_graphics and {
                  draw_as_shadow = true,
                  filename = "__angelspetrochem__/graphics/entity/gas-refinery/hr-vertical-pipe-shadow-patch.png",
                  priority = "high",
                  width = 128,
                  height = 128,
                  repeat_count = 36,
                  shift = {2, 2},
                  scale = 0.5,
                } or nil
              },
            }
          }
        },
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_covers = pipecoverspictures(),
          base_area = 0.50,
          base_level = -1,
          pipe_connections = {{type = "input", position = {0, 3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {-2, -3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {0, -3}}}
        },
        {
          production_type = "output",
          pipe_covers = pipecoverspictures(),
          base_level = 1,
          pipe_connections = {{type = "output", position = {2, -3}}}
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelspetrochem__/sound/gas-refinery.ogg", volume = 0.5},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    }
  }
)
