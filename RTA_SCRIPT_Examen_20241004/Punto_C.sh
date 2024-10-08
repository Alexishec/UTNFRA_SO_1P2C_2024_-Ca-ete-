sudo groupadd p1c2_2024_gProfesores
sudo groupadd p1c2_2024_gAlumno




sudo useradd -m -s /bin/bash -c "primer_alumno" -p "$(sudo cat /etc/shadow | grep vagrant | awk -F ":" '{print$2}')" -G p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -m -s /bin/bash -c "segundo_alumno" -p "$(sudo cat /etc/shadow | grep vagrant | awk -F ":" '{print$2}')" -G p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -m -s /bin/bash -c "tercer_alumno" -p "$(sudo cat /etc/shadow | grep vagrant | awk -F ":" '{print$2}')" -G p1c2_2024_gAlumno p1c2_2024_A3
sudo useradd -m -s /bin/bash -c "profesor" -p "$(sudo cat /etc/shadow | grep vagrant | awk -F ":" '{print$2}')" -G p1c2_2024_gProfesores p1c2_2024_P1


echo ""
echo "ARCHIVOS ANTES DEL CAMBIO"
echo ""

ls -l /Examenes-UTN/

sudo chmod 750 /Examenes-UTN/alumno_1
sudo chmod 760 /Examenes-UTN/alumno_2
sudo chmod 700 /Examenes-UTN/alumno_3
sudo chmod 775 /Examenes-UTN/profesores

sudo chown p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1
sudo chown p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2
sudo chown p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3
sudo chown p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores


echo ""
echo "MOSTRANDO LOS ARCHIVOS CORRESPONDIENTES CON SUS CAMBIOS"
echo ""


ls -l /Examenes-UTN/

touch Punto_C_validar.txt
echo "">>Punto_C_validar.txt
echo "Alumno1">Punto_C_validar.txt
sudo -u p1c2_2024_A1 whoami>>Punto_C_validar.txt
echo "">>Punto_C_validar.txt
echo "Alumno2">>Punto_C_validar.txt
sudo -u p1c2_2024_A2 whoami>>Punto_C_validar.txt
echo "">>Punto_C_validar.txt
echo "Alumno3">>Punto_C_validar.txt
sudo -u p1c2_2024_A3 whoami>>Punto_C_validar.txt
echo "">>Punto_C_validar.txt
echo "Profesor">>Punto_C_validar.txt
sudo -u p1c2_2024_P1 whoami>>Punto_C_validar.txt

echo ""
echo "MOSTRANDO EL ARCHIVO validar.txt"
echo ""


cat Punto_C_validar.txt

