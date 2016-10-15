///scr_dash_state

len = spd*4;

//horizontal i vertical speed
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

//move
phy_position_x += hspd;  //phy_position_x += hspd; e kato phy_position_x = phy_postition hspd;
phy_position_y += vspd;

//dash effect
var dash = instance_create(x,y,obj_dash_effect);
dash.sprite_index = sprite_index;
dash.image_index = image_index;





