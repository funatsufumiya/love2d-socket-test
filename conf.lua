if lovr then
    function lovr.conf(t)
        t.modules.window = false
    end
else
    function love.conf(t)
        t.modules.window = false
    end
end