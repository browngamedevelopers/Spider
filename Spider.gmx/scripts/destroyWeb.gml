/// destroyWeb()

// allow player to fire web again
with(objPlayer){
    isSwinging = false;
    isShooting = false;
    mouseDown = false;
    canShoot = false;
    alarm[0] = room_speed * 2;
    physics_joint_delete(joint);
}

// destroy web
instance_destroy();
