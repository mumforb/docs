#!/bin/bash
rm -rf content
mkdir content

# Find all markdown files with publish: true in frontmatter
find /workspaces/Obsidian -name "*.md" -exec grep -l "publish: true" {} \; | while read file; do
    # Copy to content directory, preserving directory structure
    relative_path=${file#/workspaces/Obsidian/mumforb}
    mkdir -p "content/$(dirname "$relative_path")"
    cp "$file" "content/$relative_path"
done

# Also copy any attachments directory if it exists
if [ -d "/workspaces/Obsidian/mumforb/attachments" ]; then
    cp -r /workspaces/Obsidian/mumforb/attachments content/
fi