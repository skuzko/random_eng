#!/bin/bash
echo "Великая честь быть добровольцем выпала:"
# участники лотереи
participant="Дмитрий Проканюк
Елена Лукина
Александр Евстюнин
Алексей Северюхин
Дмитрий Старостин
Василий Федорцов
Никита Возвышаев
Захар Миракин
Алексей Шатохин
Сергей Гущин
Григорий Пахомов
Кирилл Довгаль
Александра Дончук
Варлаам Глотов
Алексей Покидько"

#определяем количество участников
num_participant=`echo "$participant" | wc -l`

#выбор случайного числа от 1 до количества участников
rnd_num=$(($RANDOM % $num_participant  + 1))

#выводим весь список с подсвеченой строкой победителя
SWITCH="\033["
DEF="${SWITCH}0m"
WIN="${SWITCH}1;33m"
NOTWIN="${SWITCH}0;32m"
n=1
while read line; do
if [ $n == $rnd_num ]
then echo -e "${WIN}$line - Победитель!${DEF}"
else echo -e "${NOTWIN}$line${DEF}"
fi
n=$((n+1))
done <<< "$participant"
