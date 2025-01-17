from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn


@library
class Inventory:

    def __init__(self):
        self.selLib = BuiltIn().get_library_instance("SeleniumLibrary")

    @keyword
    def click_add_to_cart_for_item(self, item_name):
        xpath = f"//div[contains(text(), '{item_name}')]/following::button[1]"
        self.selLib.click_element(xpath)

    @keyword
    def get_text_price_for_item(self, item_name):
        xpath = f"//div[contains(text(), '{item_name}')]/following::div[@class='inventory_item_price']"
        return self.selLib.get_text(xpath)