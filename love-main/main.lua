local logo = love.graphics.newImage("frog.t3x")
local barcode = love.graphics.newImage("barcode.t3x")
local http = require "socket.http"
local json = require "json"


function love.load()
    vel = 0
    mover = 240
    music = love.audio.newSource("hotdogs.ogg", "stream")
    love.graphics.setNewFont("tt_commons_bold.bcfnt", 14)
    menu = 0
    count = 0
    login = 0
    --id = ''
    --url = ''
    --api = "b646c65e-a43d-4a61-9294-6c7c4385c762"
    --custom = ''
    --uuid = ''
    --email = ''
    --pass = ''
    --token = ''
    --headers = {
      --  ["Accept"] = "application/json",
        --["Content-Type"] = "application/json",
      --  ["Api-Version"] = "4.3"
    --}
    --body = {
      --  ["apiKey"] = api,
       -- ["email"] = email,
        --["password"] = password,
        --["uuid"] = uuid
    --}
    --if login == 1 then
      --  r = https.request {
        --    method = "POST",
          --  url, 
            --json = body,
            --headers = headers
        --}
        
        --local token = r.json(){'token'}
        --r = https.request {
          --  url = "https://api.synerise.com/v4/my-account/personal-information",
            --headers = {["Authorization"] = "Bearer " + token }
        --}
        --custom = r.json()['customId']
    --end
    -- burl = "http://www.keepautomation.com/online_barcode_generator/linear.aspx?TYPE=7&DATA=" .. id .. "&PROCESS-TILDE=false&UOM=0&X=3&Y=60&ROTATE=0&RESOLUTION=72&FORMAT=png&LEFT-MARGIN=0&RIGHT-MARGIN=0&SHOW-TEXT=true&TEXT-FONT=Arial%7c9%7cRegular"
    -- image_file = http.request(burl)
    -- filedata = love.filesystem.newFileData(image_file, '', 'file')
    -- imagedata = love.image.newImageData(filedata)
    -- image = love.graphics.newImage(imagedata)
end

function love.draw(screen)
    if menu == 0 then
        if screen ~= "bottom" then
            love.graphics.setColor(1,1,1,1)
            love.graphics.rectangle("fill",2,2,400,240,4,4)
            love.graphics.draw(logo, 60, 70)
            return 
        end
        love.graphics.setColor(1,1,1,1)
        love.graphics.rectangle("fill",2,2,320,240,4,4)
        love.graphics.setColor(0.27,0.84,0.43,1)
        love.graphics.rectangle("fill",65,70,190,45,4,4)
        love.graphics.print('Zaloguj Się', 185, 120, 0, 1.5, 1.5)
        love.graphics.setColor(1,1,1,1)
        love.graphics.print('Naciśnij A', 90, 70, 0, 3, 3) 
        love.graphics.setColor(0.67,0.67,0.67,1)
        love.graphics.print('Masz już Konto?', 65, 120, 0, 1.5, 1.5)
        love.graphics.origin()  
    end
    if menu == 1 then
        if screen ~= "bottom" then
            love.graphics.setColor(0.27,0.84,0.43,1)
            love.graphics.rectangle("fill",2,2,400,240,4,4)
            love.graphics.setColor(1,1,1,1)
            love.graphics.print('To tylko prototyp (A)', 80, 90, 0, 3, 3) 
            return 
        end
        love.graphics.setColor(1,1,1,1)
        love.graphics.rectangle("fill",2,2,320,240,4,4)
        love.graphics.setColor(0.67,0.67,0.67,1)
        -- love.graphics.print('Email:', 65, 60, 0, 1.5, 1.5)
        -- love.graphics.print('Hasło:', 65, 150, 0, 1.5, 1.5)
        -- love.graphics.print('Naciśnij (A) by wprowadźić dane', 65, 200, 0, 1.5, 1.5)
        love.graphics.origin()  
    end
    if menu == 2 then
        if screen ~= "bottom" then
            love.graphics.setColor(1,1,1,1)
            love.graphics.rectangle("fill",2,2,400,240,4,4)
            love.graphics.setColor(0.27,0.84,0.43,1)
            love.graphics.print('Cześć, ' .. id, 10, 10, 0, 3, 3)
            love.graphics.draw(barcode, 55, 70)
            return 
        end
        love.graphics.setColor(1,1,1,1)
        love.graphics.rectangle("fill",2,2,320,240,4,4)
        love.graphics.draw(logo, 20, 70)
        love.graphics.origin()  
    end
end



function love.gamepadpressed(_, button)
    if button == "start" then love.event.quit() end
    if menu == 0 then
        if button == "a" then 
            menu = 1 
            love.graphics.clear()
        end
    end
    if menu == 1 then
        if button == "b" then 
            menu = 0 
            love.graphics.clear()
        end
        if button == "a" then 
            love.keyboard.setTextInput({hint = "Napisz swoje imie."})
            -- count = 1
            menu = 2
            vel = 1
            -- login = 1
        end
    end
end

function love.textinput(text)
    if count == 0 then
        id = text
    end
    -- if count == 1 then
       --  pass = text
    -- end
end


function love.update(dt)
	if not music:isPlaying( ) then
		love.audio.play(music)
	end
    
end