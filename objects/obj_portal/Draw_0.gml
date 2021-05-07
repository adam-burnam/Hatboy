/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 362B3E5F
/// @DnDArgument : "code" "shader_set(portal_shader);$(13_10)shader_set_uniform_f(t, timer);$(13_10)shader_set_uniform_f(a, 0.07);$(13_10)shader_set_uniform_f(s, .1);$(13_10)shader_set_uniform_f(f, 10);$(13_10)draw_surface(surf, x-sprite_width/2, y-sprite_height/2);$(13_10)shader_reset();"
shader_set(portal_shader);
shader_set_uniform_f(t, timer);
shader_set_uniform_f(a, 0.07);
shader_set_uniform_f(s, .1);
shader_set_uniform_f(f, 10);
draw_surface(surf, x-sprite_width/2, y-sprite_height/2);
shader_reset();