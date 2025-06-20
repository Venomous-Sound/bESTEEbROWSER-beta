#!/bin/bash

# Script to set up GitHub releases workflow
# This helps automate the release process while keeping source code private

echo "Setting up BesteeBrowser Beta Release Process"
echo "============================================"

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}This script will help you set up the release process.${NC}"
echo ""

# Check if gh CLI is installed
if ! command -v gh &> /dev/null; then
    echo -e "${YELLOW}GitHub CLI (gh) is not installed.${NC}"
    echo "Install it with: brew install gh"
    echo "Then run: gh auth login"
    exit 1
fi

# Function to create a release
create_release() {
    VERSION=$1
    DMG_PATH=$2
    NOTES=$3
    
    echo -e "${BLUE}Creating release ${VERSION}...${NC}"
    
    # Create release with gh CLI
    gh release create "$VERSION" \
        --title "BesteeBrowser ${VERSION}" \
        --notes "$NOTES" \
        --prerelease \
        "$DMG_PATH"
    
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}✓ Release created successfully!${NC}"
    else
        echo -e "${YELLOW}Failed to create release${NC}"
        exit 1
    fi
}

# Example usage
echo ""
echo "To create a new release, run:"
echo -e "${GREEN}gh release create v1.0.0-beta.2 ./path/to/BesteeBrowser-1.0.0-beta.2-arm64.dmg --title \"BesteeBrowser v1.0.0-beta.2\" --notes \"Release notes here\" --prerelease${NC}"
echo ""
echo "Or use this script's function:"
echo -e "${GREEN}source setup-releases.sh${NC}"
echo -e "${GREEN}create_release \"v1.0.0-beta.2\" \"./path/to/dmg\" \"Release notes\"${NC}"