
require 'constants'
require 'dependencies'

require 'paddle'

function love.load()
    -- initialize our nearest-neighbor filter
    love.graphics.setDefaultFilter('nearest', 'nearest')

    -- app window title
    love.window.setTitle('Breakout')

    -- initialize our virtual resolution
    push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
        vsync = true,
        fullscreen = false,
        resizable = true
    })


    paddle = Paddle(VIRTUAL_HEIGHT-20, VIRTUAL_WIDTH / 2, 40, 6)
end



function love.resize(w, h)
    push:resize(w, h)
end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end


function love.update(dt)
    -- player 2 movement
    if love.keyboard.isDown('left') then
        print('left')
        dx = -PADDLE_SPEED
    elseif love.keyboard.isDown('right') then
        print('right')
        dx = PADDLE_SPEED
    else
        dx = 0
    end

end

function love.draw()
    push:start()
    
    paddle:render()

    push:finish()
end