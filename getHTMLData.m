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
        fprintf(2,"Couldn't load page\n")
        pause(1)
        fprintf("Trying again...\n")
        html = getHTMLData(url);
    else
        fprintf(2,"Couldn't load next page\n")
        pause(1)
        fprintf("Trying again...\n")
        html = getHTMLData(url);
    end
end