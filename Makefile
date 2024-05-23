APP_DIR = Cubichi.app
RESOURCES_DIR = resources
SCRIPTS_DIR = scripts

ICON_PNG = $(RESOURCES_DIR)/icon.png
ICONSET_DIR = $(RESOURCES_DIR)/icon.iconset
ICNS_FILE = $(APP_DIR)/Contents/Resources/AppIcon.icns
RELEASE_DIR = release/

.PHONY: all clean generate_icns create_dmg

all: generate_icns create_dmg

generate_icns:
	$(SCRIPTS_DIR)/generate_icns.sh

create_dmg: generate_icns
	$(SCRIPTS_DIR)/create_dmg.sh

clean:
	rm -rf $(ICONSET_DIR) $(ICNS_FILE) $(RELEASE_DIR)
