% Function name: changeURL2nextpage
% Function description: changes the url 
% from current page to next page
% Format: changeURL2nextpage(tree)
% Date: 15-05-2024
% Author: Asiamah-Yeboah Kwabena Kwarteng

function url = changeURL2nextpage(tree)
% Base Url
base_url = "https://books.toscrape.com/catalogue/category/books_1/";
% Append Page Next Page Link to Base
a_tags = tree.findElement('a').getAttribute('href');
fetch_page_index = tree.findElement('a').getAttribute('href').startsWith("page");
fetch_page_index(fetch_page_index(1:end-1)) = 0;
url = strcat(base_url,a_tags(fetch_page_index));
end