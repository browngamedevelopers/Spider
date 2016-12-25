/// scrAttachWeb()

phy_speed_x = 0;
phy_speed_y = 0;
var webX = x;
var webY = y;

var firstCollide = false;
with(objPlayer){
    firstCollide = not isSwinging;
}

// Create joint between web end and wall
if(firstCollide){ // Called only once before start swinging
    physics_joint_distance_create(
        self, objFloor, 
        x, y, x, y,
        false);
        
    with(objPlayer){
    
        webLength = vectorMagnitude(webX - x, webY - y);
        
        // Create joint between player and wall
        joint = physics_joint_rope_create(
            objPlayer, objFloor,
            x, y, webX, webY, webLength,  false);
 
        isShooting = false;
        isSwinging = true;
    }
}
