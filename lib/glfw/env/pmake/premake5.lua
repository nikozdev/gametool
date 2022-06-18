--[=[variables]=]--
name = "glfw"
--[=[projects]=]--
project             (name)
    --[[globals]]--
    kind            ("staticlib")
    location        (root)
    language        ("c")
    cdialect        ("c99")
    --[[compile]]--
    objdir          (dobj)
    files           (dsrc.."/**")
    --[[linkage]]--
    targetdir       (dbin)
    links           {"Dwmapi"}