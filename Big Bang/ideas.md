#Ideas

Biggest price changes:
    We want to find the biggest price drops. Let's say the original price yesterday was 599.99 and today it dropped to 459.99. That's a drop of 23%. (100 - (459.99 / 599.99))
    priceDrop = (100 - (productprice / ydayprice))
    so we are gonna check each change from the tables and sort it by biggest drops percentage wise. Sort by prideDrop DESC