

local function info()

  dir = getDir(MOD_ID);

  loadVehicleModel("Vehicles_86forddelrey",

  dir.."/media/models/Vehicles_86forddelrey.txt",

  dir.."/media/textures/Vehicles/Vehicle_86forddelrey_Shell.png");

 

  VehicleDistributions[1].86forddelrey =  {

      Normal = VehicleDistributions.Normal,

      Specific = { VehicleDistributions.Groceries, VehicleDistributions.Carpenter, VehicleDistributions.Farmer, VehicleDistributions.Electrician, VehicleDistributions.Survivalist, VehicleDistributions.Clothing, VehicleDistributions.ConstructionWorker, VehicleDistributions.Painter },

  }

  ISCarMechanicsOverlay.CarList["Base.86forddelrey"] = {imgPrefix = "smallcar_", x=10,y=0};

  VehicleZoneDistribution.parkingstall.vehicles["Base.86forddelrey"] = {index = -1, spawnChance = 30};

end


Events.OnInitWorld.Add(info);
