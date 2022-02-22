---
# Front matter
title: "Отчёт по лабораторной работе №3"
subtitle: "Модель боевых действий"
author: "Кондрашина Мария Сергеевна"

# Generic otions
lang: ru-RU
toc-title: "Содержание"

# Pdf output format
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
### Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Misc options
indent: true
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
  - \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Научиться строить модель боевых действий.

# Задание. Вариант 34

Выполнить лабораторную работу №3 согласно своему варианту(34), сделать по ней отчет.

Условие задачи:
Между страной Х и страной У идет война. Численность состава войск  исчисляется от начала войны, и являются временными функциями $x(t)$ и $y(t)$. В начальный момент времени страна Х имеет армию численностью 150 000 человек, а в распоряжении страны У армия численностью в 100 000 человек. Для упрощения модели считаем, что коэффициенты $a, b, c, h$ постоянны. Также считаем $P(t)$ и $Q(t)$ непрерывные функции.

Постройте графики изменения численности войск армии Х и армии У для следующих случаев:

1. Модель боевых действий между регулярными войсками

$$
\frac{dx}{dt}=-0.45x(t)-0.85y(t)+\sin(t+8)+1
$$
$$
\frac{dy}{dt}=-0.45x(t)-0.45y(t)+\cos(t+8)+1
$$

2. Модель ведение боевых действий с участием регулярных войск и партизанских отрядов

$$
\frac{dx}{dt}=-0.31x(t)-0.79y(t)+2\sin(t)
$$
$$
\frac{dy}{dt}=-0.41x(t)y(t)-0.32y(t)+2\cos(t)
$$

[1]

# Теоретическое введение

Моделирование боевых и военных действий является важнейшей научной и практической задачей,
направленной на предоставление командованию количественных оснований для принятия решений.[2]

Целью моделирования является прогнозирование средних количеств пораженных и непораженных боевых единиц каждой группировки на любой момент времени.[3]

# Выполнение лабораторной работы

1. Модель боевых действий между регулярными войсками

$$
\frac{dx}{dt}=-0.45x(t)-0.85y(t)+\sin(t+8)+1
$$
$$
\frac{dy}{dt}=-0.45x(t)-0.45y(t)+\cos(t+8)+1
$$

Численность регулярных войск определяется тремя факторами:

- скорость уменьшения численности войск из-за причин, не связанных с боевыми действиями (болезни, травмы, дезертирство);
- скорость потерь, обусловленных боевыми действиями
противоборствующих сторон (что связанно с качеством стратегии, уровнем вооружения, профессионализмом солдат и т.п.);
- скорость поступления подкрепления (задаётся некоторой функцией от времени).

В этом случае модель боевых действий между регулярными войсками описывается следующим образом:

$$
\frac{dx}{dt}=-a(t)x(t)-b(t)y(t)+P(t)
$$
$$
\frac{dy}{dt}=-c(t)x(t)-h(t)y(t)+Q(t)
$$

Потери, не связанные с боевыми действиями, описывают члены  и $-a(t)x(t)$ и $-h(t)y(t)$, члены $-b(t)y(t)$  и $-c(t)x(t)$ отражают потери на поле боя. Коэффициенты $b(t)$ и $c(t)$ указывают на эффективность боевых действий со стороны у и х соответственно, $a(t),h(t)$ - величины, характеризующие степень влияния различных факторов на потери. Функции $P(t), Q(t)$ учитывают возможность подхода подкрепления к войскам Х и У в течение одного дня.

Данные коэффициенты при условии моей задачи имеют значения: $a(t) = 0.45$, $b(t) = 0.85$, $c(t) = 0.45$, $h(t) = 0.45$, $P(t) = \sin(t+8)+1$, $Q(t) = \cos(t+8)+1$. А также начальные условия: $x_0=150000$, $y_0=100000$

Код программы: (@fig:001)

![Код программы для модели боевых действий между регулярными войсками](lab3p/c1.jpg){ #fig:001 width=75%}

График: (@fig:002)

![Изменение численности армии X и Y в процессе боевых действий при условии участия только регулярных войск](lab3p/g1.jpg){ #fig:002 width=100%}

1. Модель ведение боевых действий с участием регулярных войск и партизанских отрядов

$$
\frac{dx}{dt}=-0.31x(t)-0.79y(t)+2\sin(t)
$$
$$
\frac{dy}{dt}=-0.41x(t)y(t)-0.32y(t)+2\cos(t)
$$

Во втором случае в борьбу добавляются партизанские отряды. Нерегулярные войска в отличии от постоянной армии менее уязвимы, так как действуют скрытно, в этом случае сопернику приходится действовать неизбирательно, по площадям,занимаемым партизанами. Поэтому считается, что тем потерь партизан, проводящих свои операции в разных местах на некоторой известной территории, пропорционален не только численности армейских соединений, но и численности самих партизан. В результате модель принимает вид:

$$
\frac{dx}{dt}=-a(t)x(t)-b(t)y(t)+P(t)
$$
$$
\frac{dy}{dt}=-c(t)x(t)y(t)-h(t)y(t)+Q(t)
$$
В этой системе все величины имею тот же смысл, что и в предыдущем.

Данные коэффициенты при условии моей задачи имеют значения: $a(t) = 0.31$, $b(t) = 0.79$, $c(t) = 0.41$, $h(t) = 0.32$, $P(t) = 2\sin(t)$, $Q(t) = 2\cos(t)$. А также начальные условия: $x_0=150000$, $y_0=100000$

Код программы: (@fig:003)

![Код программы для модели боевых действий между регулярными войсками и партизанских отрядов ](lab3p/c2.jpg){ #fig:003 width=75%}

График: (@fig:004)

![Изменение численности армии X и Y в процессе боевых действий при условии участия регулярных войск и партизанских отрядов ](lab3p/g2.jpg){ #fig:004 width=100%}

# Выводы

- Выполнила лабораторную работу №3.
- Познакомилась с написанием модели боевых действий.
- Познакомилась с написанием математических моделей при использованиии openmodelica.

# Список литературы

1. Методические материалы курса
2. Математические модели боевых и военных действий
В.В.Шумов, В.О.Корепанов: crm.ics.org.ru/uploads/crmissues/crm_2020_1/2020_01_14.pdf
3. https://intuit.ru/studies/educational_groups/594/courses/499/lecture/11353?page=7