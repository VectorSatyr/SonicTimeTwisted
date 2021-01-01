/// @description Spawn
instance_destroy(platform);
platform = instance_create_depth(x, y, depth, objDDFallingPlatformSpawed);
platform.parent = id;