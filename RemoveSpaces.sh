# Save this as RemoveSpaces.sh in your project directory or somewhere accessible
for dir in "$directoryPath"/*/; do
    newName=$(basename "$dir" | tr -d ' ')
    mv "$dir" "$directoryPath/$newName"
done

# Step 2: Update references in code files
find "$directoryPath" -type f \( -name "*.js" -o -name "*.ts" -o -name "*.html" -o -name "*.css" \) -exec sed -i '' 's/ //g' {} +
