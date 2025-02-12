# Makefile for building vendor image for Samsung Galaxy A22 5G

# Set the path to your vendor directory (where a22x-vendor.mk is located)
VENDOR_DIR := .

# Output directory for the vendor image
OUTPUT_DIR := ./out

# Include the vendor makefile
include $(VENDOR_DIR)/a22x-vendor.mk

# Define the target to build the vendor image directly
vendorimage:
	@echo "Building vendor image for Samsung Galaxy A22 5G..."
	# Directly run the necessary build command without recursion
	make -C $(VENDOR_DIR) vendorimage
	@echo "Vendor image is built and saved to $(OUTPUT_DIR)/vendor.img"
