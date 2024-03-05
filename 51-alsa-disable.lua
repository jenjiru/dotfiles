rule = {
  matches = {
    {
      { "device.vendor.name", "equals", "Advanced Micro Devices, Inc. [AMD/ATI]" },
    },
  },
  apply_properties = {
    ["device.disabled"] = true,
  },
}

table.insert(alsa_monitor.rules,rule)
