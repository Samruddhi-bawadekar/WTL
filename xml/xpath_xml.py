from lxml import etree

# Load the XML file
tree = etree.parse("books.xml")
root = tree.getroot()

# Extract all book titles using XPath
titles = root.xpath("//book/title/text()")
print("Book Titles:", titles)

# Extract the author of "Machine Learning"
author = root.xpath("//book[title='Machine Learning']/author/text()")
print("Author of 'Machine Learning':", author[0] if author else "Not Found")

# Extract books with price greater than 30
expensive_books = root.xpath("//book[price>30]/title/text()")
print("Books costing more than $30:", expensive_books)