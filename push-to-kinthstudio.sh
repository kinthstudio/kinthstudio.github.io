#!/bin/bash
# Push this site to the kinthstudio GitHub account.
# Run this AFTER creating an empty repo named exactly `kinthstudio.github.io`
# at https://github.com/new while signed in as the kinthstudio account.
set -e

echo "This will push the current folder to:"
echo "  https://github.com/kinthstudio/kinthstudio.github.io"
echo ""
echo "Make sure you've already created that repo (public, no README) and are"
echo "signed in to git as the kinthstudio account."
echo ""
read -p "Press Enter to continue, or Ctrl+C to cancel..."

git remote remove origin 2>/dev/null || true
git remote add origin https://github.com/kinthstudio/kinthstudio.github.io.git
git branch -M main
git push -u origin main

echo ""
echo "Done! Your site will be live shortly at:"
echo "  https://kinthstudio.github.io"
