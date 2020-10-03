/// @description Initialize

/*
TIME TRAVEL EFFECT
This effect is achieved by drawing an animation (in this case, a scaled sprite)
to a surface. This results in a white on transparent image on the surface. When
the surface is drawn with the TimeTravelShader applied, the white pixels will be
replaced with a texture that makes it look like the SCD time travel effect.
*/

shader = TimeTravelShader;
param_scl = shader_get_uniform(shader, "scl");					
param_mask = shader_get_sampler_index(shader, "mask");			
param_grad = shader_get_sampler_index(shader, "grad");			
param_shift = shader_get_uniform(shader, "shift");	

screen_width = 426;
screen_height = 240;
surface = surface_create(screen_width, screen_height);
xscale = sprite_width / background_get_width(tt_texture);		// the scaling of the sparkly SCD texture so it will repeat enough times to not be stretched
yscale = sprite_height / background_get_height(tt_texture);
tx_mask = background_get_texture(tt_texture);					// the texture index of the sparkly SCD texture
tx_grad = background_get_texture(tt_gradient);					// the texture index of the the gradient used to cycle the colours

/*
The amount to shift the gradient to cycle the colours. It's also used to slide
the texture horizontally to give it some motion, but you could use a 2nd value
if the speeds need to be tweaked
*/
shift = 0;
time = 0;
cycle_speed = 0.01;
wave_frame = 0;

// lightning rendering properties
resolution = 30;
texel = (screen_height / resolution);
center_x = screen_width * 0.5;
center_y = screen_height * 0.5;
min_radius = 10;
max_radius = 25;