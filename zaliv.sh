#!/bin/sh

git status
git add --all .
git status
git commit -m "Added views to create/edit blog post inside the site."
git push

cd my-first-blog
source myvenv/bin/activate
git pull
python manage.py collectstatic
