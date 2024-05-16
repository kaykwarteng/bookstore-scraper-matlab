% Function name: getHTMLData
% Function description: Recursively tries to
% fetch html text from loaded pages
% Format: getHTMLData(tree)
% Date: 15-05-2024
% Author: Asiamah-Yeboah Kwabena Kwarteng

function html = getHTMLData(url)
first_page_url = "https://books.toscrape.com/catalogue/category/books_1/";
try
    html = webread(url);
catch
    if url == first_page_url
        warning("Couldn't load page")
        pause(1)
        fprintf("Trying again...\n")
        html = getHTMLData(url);
    else
        warning("Couldn't load next page")
        pause(1)
        fprintf("Trying again...\n")
        html = getHTMLData(url);
    end
end