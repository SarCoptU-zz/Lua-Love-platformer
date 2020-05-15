-- (1) basic rectangle drawing

WINDOW_WIDTH = love.graphics.getWidth()
WINDOW_HEIGHT = love.graphics.getHeight()

function love.load()
    
end

function love.update(dt)

end

function love.draw()
    ground = love.graphics.line(0, WINDOW_HEIGHT - 100, WINDOW_WIDTH, WINDOW_HEIGHT - 100)
    player = love.graphics.rectangle('line', 200, WINDOW_HEIGHT - 202, 100, 100)
    enemy = love.graphics.rectangle('line', 500, WINDOW_HEIGHT - 252, 100, 150)
    -- print window width and height
    love.graphics.print(WINDOW_WIDTH, 100, 100)
    love.graphics.print(WINDOW_HEIGHT, 200, 100)
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end