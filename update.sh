jupyter-nbconvert --execute --to markdown --TemplateExporter.exclude_input=True SA_cov_dr.ipynb

git commit -a -m 'update'

cp SA_cov_dr.md README.md
