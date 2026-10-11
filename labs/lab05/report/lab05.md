---
title: "Лабораторная работа №5: Менеджер паролей pass и управление файлами конфигурации"
author: "САКО ЛАССИНЕ"
group: "НПИБД-02-25"
date: "22.04.2026"
---

# Лабораторная работа №5: Менеджер паролей pass и управление файлами конфигурации

**Студент:** САКО ЛАССИНЕ  
**Группа:** НПИБД-02-25  
**Дата выполнения:** 22.04.2026

---

## Цель работы

Получение навыков работы с менеджером паролей pass и управлением файлами конфигурации с помощью chezmoi.

---

## Ход выполнения работы

### 1. Установка pass и gopass

![Установка pass](images/01-installation-pass.png)

### 2. Просмотр GPG ключей

![GPG ключи](images/02-gpg-list-keys.png)

### 3. Создание GPG ключа

![Создание GPG ключа](images/03-gpg-generate-key.png)

### 4. Инициализация pass

![Инициализация pass](images/04-pass-init.png)

### 5. Git init в pass

![Git init](images/05-pass-git-init.png)

### 6. Добавление пароля

![Добавление пароля](images/06-pass-insert.png)

### 7. Просмотр пароля

![Просмотр пароля](images/07-pass-show.png)

### 8. Установка chezmoi

![Установка chezmoi](images/08-install-chezmoi.png)

### 9. Версия chezmoi

![Версия chezmoi](images/09-chezmoi-version.png)

### 10. Создание репозитория dotfiles

![Создание репозитория](images/10-gh-repo-create.png)

### 11. Инициализация chezmoi

![Инициализация chezmoi](images/11-chezmoi-init.png)

### 12. Данные chezmoi

![Данные chezmoi](images/12-chezmoi-data.png)

### 13. Различия chezmoi

![Различия](images/13-chezmoi-diff.png)

### 14. Создание bash_aliases

![Создание bash_aliases](images/14-create-bash-alias.png)

### 15. Добавление файла

![Добавление файла](images/15-chezmoi-add.png)

### 16. Применение конфигурации

![Применение](images/16-chezmoi-apply.png)

### 17. Проверка файла

![Проверка](images/17-bash-alias-verify.png)

### 18. Git commit

![Git commit](images/18-git-commit.png)

### 19. Git push

![Git push](images/19-git-push.png)

---

## Выводы

В ходе выполнения лабораторной работы были получены навыки работы с pass и chezmoi.

---

## Ответы на контрольные вопросы

### 1. Что такое pass?

Pass — стандартный менеджер паролей для Unix.

### 2. Как инициализировать pass?

```bash
pass init <email>

### 3. Как добавить пароль?

```bash
pass insert <путь/к/файлу>

# Пример:
pass insert test/example

### 4. Что такое chezmoi?

**chezmoi** — это инструмент для управления файлами конфигурации (dotfiles) на нескольких машинах. Он позволяет синхронизировать и применять настройки с помощью шаблонов и Git.

### 5. Как применить конфигурацию chezmoi?

```bash
chezmoi apply -v

# Опции:
# -v         подробный вывод (verbose)
# --dry-run  просмотреть изменения без применения

## Заключение

Лабораторная работа выполнена в полном объёме. Освоены инструменты **pass** для управления паролями и **chezmoi** для управления dotfiles.
