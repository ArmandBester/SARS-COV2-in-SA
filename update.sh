jupyter-nbconvert --execute --to markdown --TemplateExporter.exclude_input=True SA_cov_dr.ipynb

git add README.md

git commit -a -m 'update'

cp SA_cov_dr.md README.md

git push 

