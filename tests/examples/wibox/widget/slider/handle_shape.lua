--DOC_HIDE_ALL
local parent    = ...
local wibox     = require("wibox")
local gears     = {shape = require("gears.shape")}
local beautiful = require("beautiful")

local function gen(val)
    return wibox.widget {
        bar_border_color    = beautiful.border_color,
        bar_border_width    = 1,
        bar_margins         = {},
        handle_shape        = gears.shape[val],
        handle_color        = beautiful.bg_normal,
        handle_border_color = beautiful.border_color,
        handle_border_width = 1,
        widget              = wibox.widget.slider,
    }
end

local l = wibox.layout {
    gen("rectangle"), gen("losange"), gen("circle"), gen("isosceles_triangle"),
    forced_height = 30,
    forced_width  = 400,
    spacing       = 5,
    layout        = wibox.layout.flex.horizontal
}

parent:add(l)
