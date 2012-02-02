-- 
-- Abstract: Test Project to create and render GUIDs.
--
-- Version: 1.0.0
-- 

-- Require our guid module:
local guid = require "guid"

local background = display.newRect(0, 0, display.contentWidth, display.contentHeight);
      background:setFillColor(77, 77, 77);

local yPosition = 0;

-- Render 10 GUIDs by calling guid.generate()
for i = 1, 10, 1 do
    yPosition = (yPosition + 30);
    local myText = display.newText( guid.generate(), 0, 0, native.systemFont, 11 );
          myText.x = display.contentWidth / 2;
          myText.y = yPosition;
          myText:setTextColor( 255 );
end