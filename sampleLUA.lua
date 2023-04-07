-- Doesn't work on syn for obvious reasons.
for i,v in pairs(getconnections(game.LogService.MessageOut)) do
    local f = v.Function
    local t = getupvalues(f)[4]
 
    for i,v in pairs(t) do
        if game.HttpService:JSONEncode(i) == game.HttpService:JSONEncode("_logData") then
            local _,data = next(v)
            local _,entry = next(data[1])
            entry[next(entry)] = "hi"
        end
    end
end
