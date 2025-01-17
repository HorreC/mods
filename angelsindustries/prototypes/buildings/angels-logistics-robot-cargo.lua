local sounds = require("__base__.prototypes.entity.sounds")

data:extend(
{
  {
    type = "item",
    name = "cargo-robot",
    icon = "__angelsindustries__/graphics/icons/cargo-robot.png",
    icon_size = 32,
    subgroup = "angels-cargo-bots",
    order = "b[angels-logistics-robot]-a[cargo-robot]",
    place_result = "cargo-robot",
    stack_size = 50
  },
  {
    type = "logistic-robot",
    name = "cargo-robot",
    icon = "__angelsindustries__/graphics/icons/cargo-robot.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 0.1, result = "cargo-robot"},
    max_health = 100,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 100,
    speed = 0.02,
    max_energy = "300kJ",
    energy_per_tick = "0.01kJ",
    speed_multiplier_when_out_of_energy = 0.8,
    energy_per_move = "0.1kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    idle =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-robot/cargo-robot.png",
      priority = "high",
      line_length = 16,
      width = 128,
      height = 128,
      scale = 0.5,
      frame_count = 1,
      shift = {0, 0},
      direction_count = 16,
      y = 128
    },
    idle_with_cargo =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-robot/cargo-robot.png",
      priority = "high",
      line_length = 16,
      width = 128,
      height = 128,
      scale = 0.5,
      frame_count = 1,
      shift = {0, 0},
      scale = 0.5,
      direction_count = 16,
    },
    in_motion =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-robot/cargo-robot.png",
      priority = "high",
      line_length = 16,
      width = 128,
      height = 128,
      scale = 0.5,
      frame_count = 1,
      shift = {0, 0},
      scale = 0.5,
      direction_count = 16,
      y = 384
    },
    in_motion_with_cargo =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-robot/cargo-robot.png",
      priority = "high",
      line_length = 16,
      width = 128,
      height = 128,
      scale = 0.5,
      frame_count = 1,
      shift = {0, 0},
      scale = 0.5,
      direction_count = 16,
      y = 256
    },
    shadow_idle =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-robot/cargo-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 64,
      height = 64,
      frame_count = 1,
      shift = {0, 0},
      direction_count = 16,
    },
    shadow_idle_with_cargo =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-robot/cargo-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 64,
      height = 64,
      frame_count = 1,
      shift = {0, 0},
      direction_count = 16
    },
    shadow_in_motion =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-robot/cargo-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 64,
      height = 64,
      frame_count = 1,
      shift = {0, 0},
      direction_count = 16,
    },
    shadow_in_motion_with_cargo =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-robot/cargo-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 64,
      height = 64,
      frame_count = 1,
      shift = {0, 0},
      direction_count = 16
    },
    working_sound = sounds.flying_robot(0.5),
    cargo_centered = {0.0, 0},
  },
  {
    type = "item",
    name = "cargo-robot-2",
    icon = "__angelsindustries__/graphics/icons/cargo-robot.png",
    icon_size = 32,
    subgroup = "angels-cargo-bots",
    order = "b[angels-logistics-robot]-b[cargo-robot-2]",
    place_result = "cargo-robot-2",
    stack_size = 50
  },
  {
    type = "logistic-robot",
    name = "cargo-robot-2",
    icon = "__angelsindustries__/graphics/icons/cargo-robot.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 0.1, result = "cargo-robot-2"},
    max_health = 100,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    max_payload_size = 500,
    speed = 0.04,
    max_energy = "600kJ",
    energy_per_tick = "0.01kJ",
    speed_multiplier_when_out_of_energy = 0.8,
    energy_per_move = "0.1kJ",
    min_to_charge = 0.2,
    max_to_charge = 0.95,
    idle =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-robot/cargo-robot.png",
      priority = "high",
      line_length = 16,
      width = 128,
      height = 128,
      scale = 0.5,
      frame_count = 1,
      shift = {0, 0},
      direction_count = 16,
      y = 128
    },
    idle_with_cargo =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-robot/cargo-robot.png",
      priority = "high",
      line_length = 16,
      width = 128,
      height = 128,
      scale = 0.5,
      frame_count = 1,
      shift = {0, 0},
      scale = 0.5,
      direction_count = 16,
    },
    in_motion =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-robot/cargo-robot.png",
      priority = "high",
      line_length = 16,
      width = 128,
      height = 128,
      scale = 0.5,
      frame_count = 1,
      shift = {0, 0},
      scale = 0.5,
      direction_count = 16,
      y = 384
    },
    in_motion_with_cargo =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-robot/cargo-robot.png",
      priority = "high",
      line_length = 16,
      width = 128,
      height = 128,
      scale = 0.5,
      frame_count = 1,
      shift = {0, 0},
      scale = 0.5,
      direction_count = 16,
      y = 256
    },
    shadow_idle =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-robot/cargo-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 64,
      height = 64,
      frame_count = 1,
      shift = {0, 0},
      direction_count = 16,
    },
    shadow_idle_with_cargo =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-robot/cargo-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 64,
      height = 64,
      frame_count = 1,
      shift = {0, 0},
      direction_count = 16
    },
    shadow_in_motion =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-robot/cargo-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 64,
      height = 64,
      frame_count = 1,
      shift = {0, 0},
      direction_count = 16,
    },
    shadow_in_motion_with_cargo =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-robot/cargo-robot-shadow.png",
      priority = "high",
      line_length = 16,
      width = 64,
      height = 64,
      frame_count = 1,
      shift = {0, 0},
      direction_count = 16
    },
    working_sound = sounds.flying_robot(0.5),
    cargo_centered = {0.0, 0},
  },
}
)
