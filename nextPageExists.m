% Function name: nextPageExists
% Function description: Function checks 
% if next page exists on Books to Scrape.com
% Format: nextPageExits(tree)
% Date: 15-05-2024
% Author: Asiamah-Yeboah Kwabena Kwarteng

function bool = nextPageExists(tree)
bool = false;
if sum(tree.findElement('li').getAttribute('class') == "next")
    bool = true;
end
end