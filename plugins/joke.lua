local database = 'http://vip.opload.ir/vipdl/94/11/amirhmz/'
local function run(msg)
	local res = http.request(database.."joke.db")
	local joke = res:split(",")
	return joke[math.random(#joke)]
end
--Joke Plugin v1.0 By @AmirDark
return {
	description = "500 Persian Joke",
	usage = "!joke : send random joke",
	patterns = {
		    '^[Jj]oke$',
    '^جوک$',
    "^[/!]([Jj]oke)$",
		},
	run = run
}


-- channel : @AdvanTM
-- by : @kamranya
--کپی بدون ذکر منبع حرام است