REM In production mode, we want to use a bundle of js code so that the page loads faster.
SETLOCAL
SET JEKYLL_ENV=production
bundle exec jekyll build
SET JEKYLL_ENV=development