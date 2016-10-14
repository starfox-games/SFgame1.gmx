///scr_move_state

///move

scr_get_input();
var xaxis=(right_key - left_key); //za x axis
var yaxis=(down_key - up_key); //za y axis

//get direction
var dir = point_direction(0,0, xaxis, yaxis);

//get the lenght
if (xaxis == 0 and yaxis=0)
{
    len=0;
    }else{
    len=spd;
}

//horizontal i vertical speed
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

//move
phy_position_x += hspd;  //phy_position_x += hspd; e kato phy_position_x = phy_postition hspd;
phy_position_y += vspd;

//animation
image_speed =.2;
if(len==0) image_index = 0;

//vertical
if(vspd>0)
{
    sprite_index=spr_player_down;
}
else if (vspd<0)
{
    sprite_index=spr_player_up;
}

//horizontal
if (hspd > 0)
{
    sprite_index=spr_player_right;
}
else if (hspd < 0)
{
    sprite_index=spr_player_left;
}





