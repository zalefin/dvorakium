from bs4 import BeautifulSoup

with open("/usr/share/X11/xkb/rules/evdev.xml", "r") as f:
    src = f.read()
soup = BeautifulSoup(src, "xml")

variants = soup.findAll("variant")

kb_base = None

# find dvorak element
for variant in variants:
    if variant.find("name").get_text() == "dvorak":
        kb_base = variant
        break

# quit if not found
if kb_base == None:
    exit()

# clone and edit the entry
dvorakium = BeautifulSoup(str(kb_base), "xml")
dvorakium.find("name").string = "dvorakium"
dvorakium.find("description").string = "English (Dvorakium)"

# insert the entry into the document
kb_base.insert_after(dvorakium)
print(soup)
