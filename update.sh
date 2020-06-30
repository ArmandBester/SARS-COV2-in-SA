jupyter-nbconvert --execute --to markdown --TemplateExporter.exclude_input=True SA_cov_dr.ipynb

cp SA_cov_dr.md README.md

#git add README.md SA_cov_dr.ipynb

git commit -a -m 'update'

git push 

