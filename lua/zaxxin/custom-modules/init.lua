m = {"statusline"}
prefix = 'custom-'

add = function(name)
    local key = 'zaxxin.custom-modules.'.. prefix .. name
    return key;
end

for i,v in ipairs(m) do 
    local module = add(v)
    if pcall(require, module) then
        print('custom module ' .. module .. ' intialised')
    else 
        print('error intialising ' .. module .. '.lua')
        print(debug.traceback())
    end
end

