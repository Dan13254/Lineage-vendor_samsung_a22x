# Makefile for building vendor image for Samsung Galaxy A22 5G

# Set the path to your vendor directory (where a22x-vendor.mk is located)
VENDOR_DIR := .

# Output directory for the vendor image
OUTPUT_DIR := ./out

# Include the vendor makefile
include $(VENDOR_DIR)/a22x-vendor.mk

# Define the default target to build the vendor image
vendorimage:
	@echo "Building vendor image for Samsung Galaxy A22 5G..."
	# Build the vendor image using the vendor makefile
	make -C $(VENDOR_DIR) vendorimage
	# Copy the vendor image to the output directory
	cp $(VENDOR_DIR)/vendor.img $(OUTPUT_DIR)/
	@echo "Vendor image is built and saved to $(OUTPUT_DIR)/vendor.img"
