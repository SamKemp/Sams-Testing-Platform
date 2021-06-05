--data.lua

require("item")

local button={
    type = "custom-input",
    name = "sams-testing-input",
    key_sequence = "SHIFT + G",
    consuming = "none"
}
data:extend{button}