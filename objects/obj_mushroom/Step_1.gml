/*
if (path_exists(obj_rails.pathIndex)) {
    var totalLength = path_get_length(obj_rails.pathIndex);

    path_position += 0.2 / totalLength; // Update the path position

    if (path_position >= 1) {
        path_position -= 1; // Wrap the path position to stay within range
    }

    var offset = obj_rails.drawX - obj_rails.x;
    x = path_get_x(obj_rails.pathIndex, path_position) + offset;
    y = path_get_y(obj_rails.pathIndex, path_position + 4); // Update the item's y position
}
/**/