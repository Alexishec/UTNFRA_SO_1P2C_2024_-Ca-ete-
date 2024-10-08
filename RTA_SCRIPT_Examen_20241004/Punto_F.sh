IP=$(curl -s ifconfig.me)
mi_usuario=$(whoami)
contrasena=$(sudo cat /etc/shadow | grep vagrant | awk -F ":" '{print $2}' | xargs)
usuario_git=$(git remote get-url origin)


echo "Mi IP publica es: $IP">../RTA_ARCHIVOS_Examen_20241004/Filtro_Avanzado.txt
echo "Mi usuario es: $mi_usuario">>../RTA_ARCHIVOS_Examen_20241004/Filtro_Avanzado.txt
echo "Mi Hash es: $contrasena">>../RTA_ARCHIVOS_Examen_20241004/Filtro_Avanzado.txt
echo "La URL de mi repositorio es: $usuario_git">>../RTA_ARCHIVOS_Examen_20241004/Filtro_Avanzado.txt



cat ../RTA_ARCHIVOS_Examen_20241004/Filtro_Avanzado.txt

