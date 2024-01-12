railLength = size_x;

for (var h = 0; h < railLength; h++) {
    var index;

    if (h == 0)
        index = 0;
    else if (h == railLength - 1)
        index = 2;
    else
        index = 1;

    // Add points to the path in the forward direction
    path_add_point(pathIndex, x + (h * 16), y, 0.1); 

    // Draw the rail sprite at each point
    draw_sprite(sprite, index, x + (h * 16), y); 
}

// Add points to the path in the reverse direction
for (var h = railLength - 2; h > 0; h--) {
    path_add_point(pathIndex, x + (h * 16), y, 0.1); 
}