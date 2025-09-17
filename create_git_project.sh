echo "Your project name: $1"

cd
cd "projects"
mkdir "$1"
cd "$1"
git init
touch README.md
echo -e "$1"'\n# Обо мне!\nВсем привет! Меня зовут Матвей.\nЯ обучаюсь на 2 курсе ИИТИАД. Занимаюсь frontend-разработкой.\n## Блок с кодом\n```\nna = 123\nprint(a) // 123\n```\nКод на языке python' > README.md
git add README.md
git commit -m "initial commit"
