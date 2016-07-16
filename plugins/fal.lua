local database = 'http://vip.opload.ir/vipdl/95/1/amirhmz/'
local function run(msg)
	local res = http.request(database.."fal.db")
	local fal = res:split(",") 
	return fal[math.random(#fal)]
end
--Fal Hafez Plugin v2.0 By  @kamranya
return {
	description = "500 Fal Hafez",
	usage = "!fal : send random fal",
	patterns = {
		    '^[Ff]al$',
    '^فال$',
    "^[/!]([Ff]al)$",
		},
	run = run
}

-- channel : @AdvanTM
-- by : @kamranya
--کپی بدون ذکر منبع حرام است