local numberOfPages = 1
local i = numberOfPages;
while root.Sprites["ManualPage" .. i] ~= nil do
    root.Sprites["ManualPage" .. i] = nil
    i = i + 1
    root.HelpMenu.ManualPages[i] = nil; -- 1 indexed array
end