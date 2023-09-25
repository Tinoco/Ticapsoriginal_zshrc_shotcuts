# edit vim 
alias editvim='sudo vim /usr/share/vim/vimrc'

# open folder
alias o='open'

# shutdown computer 
alias down='sudo shutdown -h +1'

# make software engineering dot file backup ( create engineeringsoftware folder ) 
umlo() {
    mkdir -p engineeringsoftware/$(date +%Y%m%d)/
    ./manage.py graph_models -a -g --dot -o engineeringsoftware/$(date +%Y%m%d)/engineeringsoftwareticapsoriginal.dot
}

# check pycodestyle patterns ( install pycodestyle with pip install pycodestyle )  
alias pj="pycodestyle --first"

# identify web business value ( install website_worth with pip install website_worth ) 
alias webvalue='website_worth run '

# python3 interpreter
alias p3='python3'

# software tests
alias b="behave"

# acess sqlite3 start column mode table vizualization
alias sq='sqlite3'
vcol() {
    sqlite3 db.dbname '.mode column' 
}
vtab() {
    sqlite3 db.dbname 'PRAGMA table_info(data_manager_data)' 

# check website security
alias vssl="curl --insecure -vvI https://www.ticapsoriginal.com 2>&1 | awk 'BEGIN { cert=0 } /^\* SSL connection/ { cert=1 } /^\*/ { if (cert) print }'"

# whois check
alias whoiscaps="whois ticapsoriginal.com"

# cmds folder stats visualization
alias l='ls -lah'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias jsi="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g' "

# create python environment
alias env3='virtualenv -p python3'

# cmd to activate environment
pro() {
    source $1/bin/activate
}

# cmds pip
alias pi='pip install'
alias pl='pip list'
alias pu='pip uninstall'

# cmds django
alias makedump='./manage.py dumpdata > db.json'
alias integritydump='./manage.py dumpdata --exclude auth.permission --exclude contenttypes > db.json'
alias loaddump='./manage.py loaddata db.json'
alias csu='python manage.py createsuperuser'
alias run='python manage.py runserver'
alias dsp='django-admin startproject'
alias mi='python manage.py migrate'
alias mmi='python manage.py makemigrations'
alias site='open http://127.0.0.1:8000'
alias csf='python manage.py collectstatic'
alias ps='python manage.py startapp' 
alias sitep='python3 -m site --user-site'
alias pf='pip freeze -> requirements.txt'
alias pep='pycodestyle --first '
alias t='python manage.py test'

# cmds git
alias jinit="git init ."
alias jadd="git add ."
alias jdif='git diff'
alias jstat='git status'
alias jc="git commit -m 'Initial Commit'"
alias jbranch='git branch'
alias jmerge='git merge'
alias jcheck='git checkout'
alias jpush='git push'

# cmds ssh server acess
alias j='ssh -p 22 ticaps88@888.888.8.888'

# cmd get time
alias givemetime='date'

# erase terminal
alias erase='clear;history -p ; clear'
