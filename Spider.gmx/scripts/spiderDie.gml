/// spiderDie()

var deadSpider = instance_create(x, y, objSpiderDead);
deadSpider.phy_speed_x = phy_speed_x;
deadSpider.phy_speed_y = phy_speed_y;

if(web != noone){
    with(web){
        instance_destroy();
    }
}
    
instance_destroy();