-- Rule to disable devices from Advanced Micro Devices, Inc. [AMD/ATI]
local amdRule = {
 matches = {
    {
      { "device.vendor.name", "equals", "Advanced Micro Devices, Inc. [AMD/ATI]" },
    },
 },
 apply_properties = {
    ["device.disabled"] = true,
 },
}

table.insert(alsa_monitor.rules, amdRule)

-- Rule to disable devices from Micro Star International
local msiRule = {
 matches = {
    {
      { "device.vendor.name", "equals", "Micro Star International" },
    },
 },
 apply_properties = {
    ["device.disabled"] = true,
 },
}

table.insert(alsa_monitor.rules, msiRule)

