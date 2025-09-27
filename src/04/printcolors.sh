#!/bin/bash

bg_colors=('47' '41' '42' '44' '45' '40')
fg_colors=('37' '31' '32' '34' '35' '30')

bg_colors_code="\e[${bg_colors[column1_background - 1]}m"
fg_colors_code="\e[${fg_colors[column1_font_color - 1]}m"
bg_value_code="\e[${bg_colors[column2_background - 1]}m"
fg_value_code="\e[${fg_colors[column2_font_color - 1]}m"
reset_color="\e[0m"

if [ -z "$column1_background" ]; then
    bg_colors_code="\e[${bg_colors[5]}m"
fi

if [ -z "$column1_font_color" ]; then
    fg_colors_code="\e[${fg_colors[0]}m"
fi

if [ -z "$column2_background" ]; then
    bg_value_code="\e[${bg_colors[1]}m"
fi

if [ -z "$column2_font_color" ]; then
    fg_value_code="\e[${fg_colors[3]}m"
fi

echo -e "${bg_colors_code}${fg_colors_code}HOSTNAME = ${bg_value_code}${fg_value_code}"$HOSTNAME"${reset_color}"
echo -e "${bg_colors_code}${fg_colors_code}TIMEZONE = ${bg_value_code}${fg_value_code}$(timedatectl show --property=Timezone --value)" "$(date +"%Z")${reset_color}"
echo -e "${bg_colors_code}${fg_colors_code}USER = ${bg_value_code}${fg_value_code}$USER${reset_color}"
echo -e "${bg_colors_code}${fg_colors_code}OS = ${bg_value_code}${fg_value_code}$(cat /etc/*-release | grep "PRETTY_NAME" | sed 's/PRETTY_NAME=//g' | sed 's/"//g')${reset_color}"
echo -e "${bg_colors_code}${fg_colors_code}DATE = ${bg_value_code}${fg_value_code}$(date +"%d %b %Y %T")${reset_color}"
echo -e "${bg_colors_code}${fg_colors_code}UPTIME = ${bg_value_code}${fg_value_code}$(uptime -p | awk '{print $2 $3 $4 $5}')${reset_color}"
echo -e "${bg_colors_code}${fg_colors_code}UPTIME_SEC = ${bg_value_code}${fg_value_code}$(cat /proc/uptime | awk '{print $1}')${reset_color}"
echo -e "${bg_colors_code}${fg_colors_code}IP = ${bg_value_code}${fg_value_code}$(hostname -I)${reset_color}"
echo -e "${bg_colors_code}${fg_colors_code}MASK = ${bg_value_code}${fg_value_code}$(netstat -rn | awk 'NR==4{print $3}')${reset_color}"
echo -e "${bg_colors_code}${fg_colors_code}GATEWAY = ${bg_value_code}${fg_value_code}$(ip r | awk '/default/ {print $3}')${reset_color}"
echo -e "${bg_colors_code}${fg_colors_code}RAM_TOTAL = ${bg_value_code}${fg_value_code}$(free -m | awk '/Mem:/{printf "%.3f GB", $2/1024}')${reset_color}"
echo -e "${bg_colors_code}${fg_colors_code}RAM_USED = ${bg_value_code}${fg_value_code}$(free -m | awk '/Mem:/{printf "%.3f GB", $3/1024}')${reset_color}"
echo -e "${bg_colors_code}${fg_colors_code}RAM_FREE = ${bg_value_code}${fg_value_code}$(free -m | awk '/Mem:/{printf "%.3f GB", $4/1024}')${reset_color}"
echo -e "${bg_colors_code}${fg_colors_code}SPACE_ROOT = ${bg_value_code}${fg_value_code}$(df /root/ | awk '/\/$/ {printf "%.2f MB", $2/1024}')${reset_color}"
echo -e "${bg_colors_code}${fg_colors_code}SPACE_ROOT_USED = ${bg_value_code}${fg_value_code}$(df /root/ | awk '/\/$/ {printf "%.2f MB", $3/1024}')${reset_color}"
echo -e "${bg_colors_code}${fg_colors_code}SPACE_ROOT_FREE = ${bg_value_code}${fg_value_code}$(df /root/ | awk '/\/$/ {printf "%.2f MB", $4/1024}')${reset_color}"

echo ""

colors=('white' 'red' 'green' 'blue' 'purple' 'black')

if [ -z "$column1_background" ]; then
    echo "Column 1 background = default (${colors[5]})"
else
    echo "Column 1 background = $column1_background (${colors[ column1_background - 1 ]})"
fi
    
if [ -z "$column1_font_color" ]; then
    echo "Column 1 font color = default (${colors[0]})"
else
    echo "Column 1 font color = $column1_font_color (${colors[ column1_font_color - 1 ]})"
fi
    
if [ -z "$column2_background" ]; then
    echo "Column 2 background = default (${colors[1]})"
else
    echo "Column 2 background = $column2_background (${colors[ column2_background - 1 ]})"
fi
    
if [  -z "$column2_font_color" ]; then
    echo "Column 2 font color = default (${colors[3]})"
else
    echo "Column 2 font color = $column2_font_color (${colors[ column2_font_color - 1 ]})"

fi