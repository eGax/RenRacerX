//
// Cactus - decoration
//

void() cactus =
{
		if (!self.spawnflags)
		{
			precache_model ("progs/cactus1.mdl");
			setmodel (self, "progs/cactus1.mdl");
			setsize (self, '-9 -9 0', '10 8 38');
		}
		else if (self.spawnflags & 1)
		{
			precache_model ("progs/cactus2.mdl");
			setmodel (self, "progs/cactus2.mdl");
			setsize (self, '-15 -8 0', '11 5 46');
		}
		else if (self.spawnflags & 2)
		{
			precache_model ("progs/cactus3.mdl");
			setmodel (self, "progs/cactus3.mdl");
			setsize (self, '-9 -7 0', '7 5 30');
		}
		else
		{
			precache_model ("progs/cactus4.mdl");
			setmodel (self, "progs/cactus4.mdl");
			setsize (self, '-5 -4 0', '3 3 10');
		}

        self.movetype = MOVETYPE_NONE;
        self.solid = SOLID_NOT;
		self.classname = "decor";
		self.origin_z = self.origin_z + 1;
		self.angles_y = random()*360;
		droptofloor();
};