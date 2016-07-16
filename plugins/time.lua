
function run(msg, matches)
local url , res = http.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "ارتباط وجود ندارد" end
local jdat = json:decode(url)
local text = '🕒 ساعت '..jdat.FAtime..' \n📆 امروز '..jdat.FAdate..' میباشد.\n    ----\n🕒 '..jdat.ENtime..'\n📆 '..jdat.ENdate.. '\n 💢TeleKoroshTM💢'
return text
end
return {
description = " Show Time ",
usage = {
"!time : show time",
},
 patterns = {
    '^[Tt]ime$',
    '^ساعت$',
    "^[/!]([Tt]ime)$",
  },
  run = run,
  moderated = true
}

-- channel : @AdvanTM
-- by : @kamranya
--کپی بدون ذکر منبع حرام است