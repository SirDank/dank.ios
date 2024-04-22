#!/bin/sh

echo "  > Enter project ( without .py ): "
read project
echo ""

python3 -m nuitka --standalone --onefile --clang --warn-unusual-code --assume-yes-for-downloads --show-anti-bloat-changes --plugin-enable=pylint-warnings --noinclude-default-mode=nofollow --product-name="$project" --file-description="$project" --file-version=69.69.69.69 --product-version=69.69.69.69 $project.py
