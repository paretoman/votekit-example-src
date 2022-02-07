---
layout: page
title: Submodule Instructions
permalink: /submodule-instructions/
---
# Submodule for Publishing Parcel Build on Github Pages

These are approximate instructions for how to (and how I almost did) set up a submodule in a repo and use it to be able to push changes to a github pages site.

## Start
Blank folder called "_site".
New repo on github.

## Make Submodule

Make the _site directory into a submodule.

```
git submodule add https://github.com/paretoman/votekit-example.git _site
```

## Work in the _site directory.
```
cd _site
```

## Need to have something to start with
```
bundle exec jekyll build
git add .
git commit -m "First Attempt"
```

## Change name
```
git branch -m master gh-pages
```

## Push to github pages
```
git remote add origin https://github.com/paretoman/votekit-example.git 
git push -u origin gh-pages
```