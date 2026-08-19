---
title: "Лабораторная работа №12: Программирование в командном процессоре ОС UNIX"
author: "САКО ЛАССИНЕ"
group: "НПИБД-02-25"
---

# Лабораторная работа №12

## 1. Цель работы
Изучение основ программирования в оболочке Bash.

## 2. Задачи
- Создание скрипта резервного копирования (backup.sh)
- Обработка аргументов командной строки (args.sh)
- Создание аналога команды ls (myls.sh)
- Подсчёт файлов по расширению (count.sh)

## 3. Ход выполнения работы

**3.1. Скрипт backup.sh**
#!/bin/bash
BACKUP_DIR=~/backup
mkdir -p 
B
A
C
K
U
P
D
I
R
t
a
r
−
c
z
f
BACKUP 
D
​
 IRtar−czfBACKUP_DIR/backup_
(
d
a
t
e
+
(date+0

text

**3.2. Скрипт args.sh**
#!/bin/bash
echo Количество аргументов: # for arg in @; do
echo - $arg
done

text

**3.3. Скрипт myls.sh**
#!/bin/bash
DIR=
1
:
−
.
f
o
r
f
i
l
e
i
n
1:−.forfileinDIR/*; do
if [ -f 
f
i
l
e
]
;
t
h
e
n
[
−
r
file];then[−rfile ] && echo -n r || echo -n -
[ -w file ] && echo -n w || echo -n - [ -x file ] && echo -n x || echo -n -
echo 
(
b
a
s
e
n
a
m
e
(basenamefile)
elif [ -d 
f
i
l
e
]
;
t
h
e
n
e
c
h
o
d
file];thenechod(basename $file)/
fi
done

text

**3.4. Скрипт count.sh**
#!/bin/bash
count=
(
f
i
n
d
(find2 -type f -name "*
1
"
2
>
/
d
e
v
/
n
u
l
l
∣
w
c
−
l
)
e
c
h
o
Количествофайлов
:
1"2>/dev/null∣wc−l)echoКоличествофайлов:count

text

## 4. Результаты

| Скрипт | Результат |
|--------|-----------|
| backup.sh | Архив создан |
| args.sh | 12 аргументов |
| myls.sh | Список каталогов |
| count.sh | 5 fichiers .sh |

## 5. Основные команды Bash

- `$#` - количество аргументов
- `$@` - все аргументы
- `$0` - имя скрипта
- `$?` - код завершения
- `-d` - проверка каталога
- `-f` - проверка файла
- `-r` - проверка чтения
- `-w` - проверка записи
- `-x` - проверка выполнения

## 6. Выводы

- Создание резервных копий с помощью tar
- Обработка аргументов командной строки
- Использование циклов for
- Поиск файлов с помощью find
- Проверка прав доступа

## 7. Заключение

Лабораторная работа выполнена в полном объёме.
