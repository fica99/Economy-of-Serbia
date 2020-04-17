# Economy-of-Serbia
Дипломная работа бакалавра на тему "Построение математических моделей экономики Сербии" , оформленная в соответствии с правилами РУДН.


## Особенности

1. Напечатана (выполнена на компьютере) на одной стороне листа односортной белой бумаги форматом А4 (210х297).
2. Полтора межстрочных интервала, нежирным шрифтом Times New Roman размером 14 пикселей.
3. Размер абзацного отступа – 5 знаков (1,25 см).
4. Поля: левое – не менее 30 мм, правое – не менее 20 мм, верхнее – не менее 20 мм, нижнее – не менее 20 мм.

## Структура исходников
VKR_Crnorbnja_Filip.tex - главный файл дипломной работы.

В каталоге inc/ находятся файлы, которые подключаются к main.tex:
* preamble.tex - файл с преамбулой
* macroses.tex - файл с макросами(новые команды, переименнованные команды)


## Работа с LaTeX

Пример компиляции проекта с помощью Makefile:

```console
git clone https://github.com/fica99/Economy-of-Serbia.git
cd Economy-of-Serbia
make
```

Очистка сборочных файлов после компиляции (кроме PDF):

```console
make clean
```

Очистка сборочных файлов после компиляции (с PDF):

```console
make fclean
```

Пересборка всех файлов:

```console
make re
```
