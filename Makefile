# Define the path to your vendor makefile
VENDOR_DIR := ./vendor/samsung/a22x

# Set the output directory for the vendor image
OUTPUT_DIR := ./out

# Set the vendor makefile
include a22x-vendor.mk

# Define the default target to build the vendor image
vendorimage:
	make -C $(VENDOR_DIR) vendorimage
	cp $(VENDOR_DIR)/vendor.img $(OUTPUT_DIR)/
	@echo "Vendor image is built and saved to $(OUTPUT_DIR)/vendor.img"
