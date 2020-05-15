-- (1) basic rectangle drawing
-- (2) added player movement with love.keyboard.isDown('key') in love.update(dt)
--     player / enemy x position are now variables

WINDOW_WIDTH = love.graphics.getWidth()
WINDOW_HEIGHT = love.graphics.getHeight()

function love.load()
    playerX = 200
    enemyX = 500
end

function love.update(dt)
    dx = 300 * dt

    -- player movement
    if love.keyboard.isDown('left') then
        playerX = playerX - dx
    elseif love.keyboard.isDown('right') then
        playerX = playerX + dx
    end
end

function love.draw()
    ground = love.graphics.line(0, WINDOW_HEIGHT - 100, WINDOW_WIDTH, WINDOW_HEIGHT - 100)
    player = love.graphics.rectangle('line', playerX, WINDOW_HEIGHT - 202, 100, 100)
    enemy = love.graphics.rectangle('line', enemyX, WINDOW_HEIGHT - 252, 100, 150)
    -- print window width and height
    love.graphics.print(WINDOW_WIDTH, 100, 100)
    love.graphics.print(WINDOW_HEIGHT, 200, 100)
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end