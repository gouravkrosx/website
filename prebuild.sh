#!/bin/bash

# Clean up any existing submodule references (optional but ensures a fresh state)
echo "Deinitializing all submodules..."
git submodule deinit -f --all

# Remove any lingering submodule data in .git/modules
echo "Cleaning up leftover submodule metadata..."
rm -rf .git/modules/components/atg/demo-projects

# Ensure the submodule path is clean
echo "Cleaning submodule directory..."
rm -rf components/atg/demo-projects

# Initialize and update submodules
echo "Initializing and updating submodules..."
git submodule update --init --recursive --force

echo "Submodules have been initialized and updated successfully!"