---
title: "Лабораторная работа №5: Менеджер паролей pass и chezmoi"
author: "САКО ЛАССИНЕ"
---

# Лабораторная работа №5

## 1. Цель работы
Освоение pass (менеджер паролей) и chezmoi (dotfiles).

## 2. Задачи
- Установка pass, gopass
- Инициализация хранилища GPG
- Добавление пароля test/example
- Установка и настройка chezmoi
- Создание репозитория dotfiles

## 3. Ход работы
- pass init "email"
- pass insert test/example
- chezmoi init git@github.com:user/dotfiles.git

## 4. Результаты
- Пароли зашифрованы GPG
- dotfiles синхронизируются через GitHub

## 5. Выводы
Пароли в безопасности, конфигурации под контролем.
