# the 7-1 architecture script.
# put it in the root folder, and click it!
mkdir sass
cd sass
touch main.scss
mkdir abstract pages layout base components vendors themes
cd abstract
touch _function.scss _mixins.scss _variables.scss
cd .. 
cd base 
touch _animations.scss _typography.scss _utilities.scss _reset.scss
cd .. 
cd layout 
touch _header.scss _footer.scss
cd .. 
cd pages 
touch _home.scss
echo "@import 'abstracts/variables', 'abstracts/functions', 'abstracts/mixins';" >> main.scss
echo // 3. Base >> main.scss
echo "@import 'base/reset', 'base/typography','base/animations', 'base/utilities';">> main.scss
echo // 4. Layout >> main.scss
echo "@import 'layout/header', 'layout/footer';" >> main.scss
echo // 5. Components >> main.scss
echo "@import 'components/button';" >> main.scss
echo // 6. Page-specific styles >> main.scss
echo "@import 'pages/home';" >> main.scss