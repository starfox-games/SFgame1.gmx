///scr_move_state

///move

scr_get_input();

//right
if(right_key)
{
    phy_position_x += spd;
    sprite_index = spr_player_right;
    image_speed = .2;
}


//left
if(left_key)
{
    phy_position_x -= spd;
    sprite_index = spr_player_left;
    image_speed = .2;
}

//up
if(up_key)
{
    phy_position_y -=spd;
    sprite_index = spr_player_up;
    image_speed = .2;
}

//down
if(down_key)
{
    phy_position_y +=spd;
    sprite_index = spr_player_down;
    image_speed = .2;
}

//animation stop
if(!right_key and !up_key and !down_key and !left_key)
{
    image_speed=0;
    image_index=0;
}
