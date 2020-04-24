from pages import Page


class LoginPage(Page):
    __url = "http://thetestingworld.com"

    def open(self):
        self._web.open(self.__url)

    def click_login_link(self, city):
        self._web.get_web_element_by_xpath("//select[@name='fromPort']/option[@value='{}']".format(city)).click()

    def select_destination_city(self, city):
        self._web.get_web_element_by_xpath("//select[@name='toPort']/option[@value='{}']".format(city)).click()

    def search_for_flights(self):
        self._web.get_web_element_by_xpath("//input[@type='submit']").click()

    def get_found_flights(self):
        return self._web.get_web_elements_by_xpath("//table[@class='table']/tbody/tr")
