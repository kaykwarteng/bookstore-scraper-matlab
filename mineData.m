% Function name: mineData
% Function description: Extracts book title information as
% well as price and availablity
% Format: mineData(tree)
% Date: 15-05-2024
% Author: Asiamah-Yeboah Kwabena Kwarteng

function [book_titles,book_prices,book_avaiability] = mineData(tree)
% Data to mine
book_titles = [];
book_prices = [];
book_avaiability = [];
li_elements = tree.findElement('li');
li_tags_class = tree.findElement('li').getAttribute('class');
book_card_indices = li_tags_class.startsWith("col-xs-6 col-sm-4 col-md-3 col-lg-3");
book_cards = li_elements(book_card_indices);
for i = 1:length(book_cards)
    book = book_cards(i);
    % Book Title
    title = book.findElement('h3').findElement('a').getAttribute('title');
    book_titles = [book_titles;title];
    % Book Price
    p_tags = book.findElement('p');
    p_tags_price_index = book.findElement('p').getAttribute('class').startsWith("price_color");
    price_tag = p_tags(p_tags_price_index);
    price = price_tag.extractHTMLText();
    book_prices = [book_prices;price];
    % Book Availability
    p_tags_availability_index = book.findElement('p').getAttribute('class').endsWith("availability");
    availability_tag = p_tags(p_tags_availability_index);
    avaliablity = availability_tag.getAttribute('class');
    book_avaiability = [book_avaiability;avaliablity];
end