from webdriver.web import Web

class Page:
    __url = "http://thetestingworld.com"

    def __init__(self, browser):
        self._web = Web(browser)

    def close(self):
        self._web.close_all()