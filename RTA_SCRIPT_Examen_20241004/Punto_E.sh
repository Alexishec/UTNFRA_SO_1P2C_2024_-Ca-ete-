


cat /proc/meminfo | grep MemTotal | awk -F ":" '{print $2}' | xargs >../RTA_ARCHIVOS_Examen_20241004/Filtro_Basico.txt
sudo dmidecode -t chassis | grep Manufacturer | awk -F ":" '{print $2}' | xargs >>../RTA_ARCHIVOS_Examen_20241004/Filtro_Basico.txt
cat ../RTA_ARCHIVOS_Examen_20241004/Filtro_Basico.txt

