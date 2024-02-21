Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.AvailableJobs = {                                     -- Only used when not using qb-jobs.
    -- ['trucker'] = { ['label'] = 'Caminhoneiro', ['isManaged'] = false },
    ['taxi'] = { ['label'] = 'Taxi', ['isManaged'] = false },
    ['tow'] = { ['label'] = 'Caminhão de reboque', ['isManaged'] = false },
    ['reporter'] = { ['label'] = 'Repórter', ['isManaged'] = false },
    ['garbage'] = { ['label'] = 'Coletor de lixo', ['isManaged'] = false },
    ['bus'] = { ['label'] = 'Motorista de ônibus', ['isManaged'] = false },
    -- ['hotdog'] = { ['label'] = 'Barraca de cachorro quente', ['isManaged'] = false }
}

Config.Cityhalls = {
    { -- Cityhall 1
        coords = vec3(-550.22, -195.32, 38.22),
        showBlip = true,
        blipData = {
            sprite = 487,
            display = 4,
            scale = 0.65,
            colour = 0,
            title = 'Serviços municipais'
        },
        licenses = {
            ['id_card'] = {
                label = 'Identidade',
                cost = 50,
            },
            ['driver_license'] = {
                label = 'CNH',
                cost = 50,
                metadata = 'driver'
            },
            ['weaponlicense'] = {
                label = 'Porte de Arma',
                cost = 5000,
                metadata = 'weapon'
            }
        }
    },
}

Config.DrivingSchools = {
    { -- Driving School 1
        coords = vec3(240.3, -1379.89, 33.74),
        showBlip = true,
        blipData = {
            sprite = 782,
            display = 4,
            scale = 0.65,
            colour = 16,
            title = 'Escola de Condução'
        },
        instructors = {
            'DJD56142',
            'DXT09752',
            'SRI85140'
        }
    },
}

Config.Peds = {
    -- Cityhall Ped
    {
        model = 'a_m_m_hasjew_01',
        coords = vec4(-552.4730, -202.7989, 37.2, 324.0814),
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        cityhall = true,
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0,
            debugPoly = false
        }
    },
    -- Driving School Ped
    {
        model = 'a_m_m_eastsa_02',
        coords = vec4(240.91, -1379.2, 32.74, 138.96),
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        drivingschool = true,
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0
        }
    }
}
