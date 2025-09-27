#!/bin/bash

chmod a+rwx columns.conf
source columns.conf

if [[ ! -f ./columns.conf ]]; then
    echo "Configuration file doesnt exist"
    exit 1
fi

if [ $# -ne 0 ]; then
    echo "Parameters are not needed"
    exit 1
fi

if [[ ! "$column1_background" =~ [1-6] ]] && [ "$column1_font_color" = 6 ]; then
    echo "Цвет шрифта первого столбца совпадает с цветом фона, заданного по умолчанию  (6 1 2 4)."
    exit 1
fi


if [[ ! "$column2_font_color" =~ [1-6] ]] && [ "$column2_background" = 4 ]; then
    echo "Цвет шрифта второго столбца совпадает с цветом фона, заданного по умолчанию (6 1 2 4)."
    exit 1
fi

if [[ ! "$column2_background" =~ [1-6] ]] && [ "$column2_font_color" = 2 ]; then
    echo "Цвет фона второго столбца совпадает с цветом шрифта, заданного по умолчанию (6 1 2 4)."
    exit 1
fi

if [[ "$column1_background" = 1 ]] && [[ ! "$column1_font_color" =~ [1-6] ]]; then
    echo "Цвет шрифта первого столбца совпадает с цветом фона, заданного по умолчанию (6 1 2 4)."
    exit 1
fi

if [[ "$column1_background" = 1 ]] && [[ "$column1_font_color" = 1 ]]; then
    echo "Цвета шрифта и фона одного столбца не должны совпадать."
    exit 1
fi

if [[ "$column1_background" = 2 ]] && [[ "$column1_font_color" = 2 ]]; then
    echo "Цвета шрифта и фона одного столбца не должны совпадать."
    exit 1
fi

if [[ "$column1_background" = 3 ]] && [[ "$column1_font_color" = 3 ]]; then
    echo "Цвета шрифта и фона одного столбца не должны совпадать."
    exit 1
fi

if [[ "$column1_background" = 4 ]] && [[ "$column1_font_color" = 4 ]]; then
    echo "Цвета шрифта и фона одного столбца не должны совпадать."
    exit 1
fi

if [[ "$column1_background" = 5 ]] && [[ "$column1_font_color" = 5 ]]; then
    echo "Цвета шрифта и фона одного столбца не должны совпадать."
    exit 1
fi

if [[ "$column1_background" = 6 ]] && [[ "$column1_font_color" = 6 ]]; then
    echo "Цвета шрифта и фона одного столбца не должны совпадать."
    exit 1
fi


if [[ "$column2_background" = 1 ]] && [[ "$column2_font_color" = 1 ]]; then
    echo "Цвета шрифта и фона одного столбца не должны совпадать."
    exit 1
fi

if [[ "$column2_background" = 2 ]] && [[ "$column2_font_color" = 2 ]]; then
    echo "Цвета шрифта и фона одного столбца не должны совпадать."
    exit 1
fi

if [[ "$column2_background" = 3 ]] && [[ "$column2_font_color" = 3 ]]; then
    echo "Цвета шрифта и фона одного столбца не должны совпадать."
    exit 1
fi

if [[ "$column2_background" = 4 ]] && [[ "$column2_font_color" = 4 ]]; then
    echo "Цвета шрифта и фона одного столбца не должны совпадать."
    exit 1
fi

if [[ "$column2_background" = 5 ]] && [[ "$column2_font_color" = 5 ]]; then
    echo "Цвета шрифта и фона одного столбца не должны совпадать."
    exit 1
fi

if [[ "$column2_background" = 6 ]] && [[ "$column2_font_color" = 6 ]]; then
    echo "Цвета шрифта и фона одного столбца не должны совпадать."
    exit 1
fi


chmod a+rwx printcolors.sh
. printcolors.sh
