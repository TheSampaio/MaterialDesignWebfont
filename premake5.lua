project "mdi"
    kind "Utility"
    location "build"

    objdir ("build/Obj/" .. output_dir .. "%{prj.name}")

    -- A font is not a library: there is nothing to compile and nothing to link, so this builds nothing. It
    -- is here so the file the editor loads is visible in the solution beside the code that loads it, and so
    -- the licence it ships under is visible beside the file.
    --
    -- The webfont's other formats (.woff, .eot) are for browsers; the engine reads the .ttf.
    files {
        "fonts/materialdesignicons-webfont.ttf",
        "LICENSE",
    }
