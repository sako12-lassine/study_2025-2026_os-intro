---
title: "Лабораторная работа №4: Продвинутое использование git"
author: "САКО ЛАССИНЕ"
group: "НПИБД-02-25"
date: "21.04.2026"
---

# Лабораторная работа №4: Продвинутое использование git

**Студент:** САКО ЛАССИНЕ  
**Группа:** НПИБД-02-25  
**Дата выполнения:** 21.04.2026

---

## Цель работы

Получение навыков правильной работы с репозиториями git, освоение Gitflow и Conventional Commits.

---

## Ход выполнения работы

### 1. Установка программного обеспечения

![Установка git-flow](images/01-installation-gitflow.png)

### 2. Создание репозитория на GitHub

![Создание репозитория](images/02-creation-repo-github.png)

![Клонирование репозитория](images/03-clonage-repo.png)

### 3. Настройка git

![Настройка git](images/04-config-git.png)

### 4. Первый коммит

![Первый коммит](images/05-premier-commit.png)

### 5. Создание package.json

![Создание package.json](images/06-creation-package-json.png)

### 6. Коммит с commitizen

![Commitizen](images/07-commitizen.png)

### 7. Инициализация git-flow

![Инициализация git-flow](images/08-git-flow-init.png)

### 8. Настройка ветки develop

![Ветка develop](images/09-branche-develop.png)

### 9. Создание релиза 1.0.0

![Релиз 1.0.0](images/10-release-1.0.0.png)

![Tag v1.0.0](images/11-tag-v1.0.0.png)

### 10. Создание feature ветки

![Feature branch](images/12-feature-branch.png)

### 11. Создание релиза 1.2.3

![Релиз 1.2.3](images/13-release-1.2.3.png)

![GitHub Releases](images/14-github-releases.png)

---

## Выводы

В ходе выполнения лабораторной работы были получены следующие результаты:

1. Установлены git-flow, Node.js, pnpm, commitizen, standard-changelog.
2. Создан репозиторий `git-extended-v2` на GitHub.
3. Настроены Conventional Commits с помощью commitizen.
4. Инициализирован Gitflow (ветки main, develop).
5. Созданы релизы v1.0.0 и v1.2.3.
6. Сгенерирован CHANGELOG.md с помощью standard-changelog.
7. Создана и завершена feature-ветка.
8. Созданы релизы на GitHub с помощью gh.

**Приобретённые навыки:**
- Работа с Gitflow workflow
- Семантическое версионирование
- Conventional Commits
- Автоматическая генерация журнала изменений
- Управление релизами на GitHub

---

## Ответы на контрольные вопросы

### 1. Что такое Gitflow?

Gitflow — это модель ветвления для git, которая определяет строгую структуру веток (master, develop, feature, release, hotfix).

### 2. Какие ветки существуют в Gitflow?

| Ветка | Назначение |
|-------|------------|
| `main` | Официальная история релизов |
| `develop` | Интеграционная ветка для функций |
| `feature/*` | Разработка новых функций |
| `release/*` | Подготовка релиза |
| `hotfix/*` | Срочные исправления |

### 3. Что такое Conventional Commits?

Спецификация для написания сообщений коммитов, которая определяет структуру и типы коммитов.

### 4. Какие типы коммитов существуют?

- `feat` — новая функция (MINOR)
- `fix` — исправление ошибки (PATCH)
- `BREAKING CHANGE` — несовместимые изменения (MAJOR)
- `docs` — документация
- `style` — форматирование
- `refactor` — рефакторинг
- `test` — тесты
- `chore` — обслуживание

### 5. Что такое семантическое версионирование?

Формат версии `MAJOR.MINOR.PATCH`.

### 6. Для чего нужен standard-changelog?

Автоматически генерирует CHANGELOG.md на основе Conventional Commits.

### 7. Как создать релиз в Gitflow?

```bash
git flow release start 1.0.0
standard-changelog --first-release
git add CHANGELOG.md
git commit -m "chore(site): add changelog"
git flow release finish 1.0.0
git push --all
git push --tags
gh release create v1.0.0 -F CHANGELOG.md

## Заключение

Лабораторная работа выполнена в полном объёме.
