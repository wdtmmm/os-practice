echo "Your project name: $1"

cd
cd "projects"
if [ -e "$1" ]
then
echo "Directory with name $1 already exist"
exit 1
fi
mkdir "$1"
cd "$1"
git init
touch README.md
echo -e "$1"'\n# Обо мне!\nВсем привет! Меня зовут Матвей.\nЯ обучаюсь на 2 курсе ИИТИАД. Занимаюсь frontend-разработкой.\n## Блок с кодом\n```\nna = 123\nprint(a) // 123\n```\nКод на языке python' > README.md
git add README.md
git commit -m "initial commit"
nano README.md
sudo ssh-keygen -t ed25519 -f "$HOME/projects/$1/keys" -N "" -q
echo "Host github.com\nIdentityFile=~/projects/$1/keys" >> "$HOME/.ssh/config"
echo "Public key printing"
sudo cat "$HOME/projects/$1/keys"
