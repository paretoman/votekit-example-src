---
layout: page
title: Submodule Instructions
permalink: /submodule-instructions/
---
# Submodule for Publishing Parcel Build on Github Pages

These are approximate instructions for how to (and how I almost did) set up a submodule in a repo and use it to be able to push changes to a github pages site.

[Similar instructions](https://stackoverflow.com/questions/14800669/git-create-repo-as-submodule) on stackoverflow.

## Create a blank github repo

[Create a new repo](https://github.com/new) on github. Only fill in a name and description. Skip the rest of the form.

Follow the instructions listed after creating the repo.

But first, there are some differences.

In this case, I have a folder called `_site` that I want to be its own repository. It is already being ignored by git. It is listed in the .gitignore file. Delete the word `_site`from .gitignore. Then change directories to `_site`.

```
cd _site
```
Then follow the rest of the instructions that github gives you after creating a repo. These are listed under the heading "... or create a new repository on the command line."
```
echo "# votekit-example" >> README.md
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/paretoman/votekit-example.git
git push -u origin main
```

## Make Submodule

Make the _site directory into a submodule.

```
cd ..
git submodule add https://github.com/paretoman/votekit-example.git _site
```
