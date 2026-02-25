if lovr then
    function lovr.conf(t)
        t.window = nil
        t.modules.window = false
        t.modules.graphics = false
    end
else
    function love.conf(t)
        t.modules.window = false
    end
end