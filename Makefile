APP_DIR = Cubichi.app
RESOURCES_DIR = resources
SCRIPTS_DIR = scripts
RELEASE_DIR = release

ICON_PNG = $(RESOURCES_DIR)/icon.png
ICONSET_DIR = $(RESOURCES_DIR)/icon.iconset
ICNS_FILE = $(APP_DIR)/Contents/Resources/AppIcon.icns

JRE_GZ = $(RESOURCES_DIR)/liberica-jre-21-full.jre.gz
JRE_EXTRACTED = $(APP_DIR)/Contents/Resources/jre

.PHONY: all clean generate_icns create_dmg extract_jre

all: create_dmg

create_dmg: generate_icns extract_jre
	$(SCRIPTS_DIR)/create_dmg.sh

generate_icns:
	$(SCRIPTS_DIR)/generate_icns.sh

extract_jre:
	mkdir -p $(JRE_EXTRACTED)
	tar -xzf $(JRE_GZ) -C $(JRE_EXTRACTED)

clean:
	rm -rf $(ICONSET_DIR) $(ICNS_FILE) $(RELEASE_DIR) $(JRE_EXTRACTED)
