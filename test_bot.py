import wikipedia
from mylib.bot import scrape
 
def test_scrape():
    assert scrape(name='Microsoft',length=1) == wikipedia.summary('Microsoft', sentences=1)