# clear files
rm -rf  build
mkdir build

# compile
coffee --compile --output build/ src/

cd build
# Chrome
cp -r ../chrome .
cp filter.js chrome/
zip -rq chrome.zip chrome/

echo "🍺  Done."
