touch Punto_B_discos.txt

echo "n">Punto_B_discos.txt
echo "p">>Punto_B_discos.txt
echo "">>Punto_B_discos.txt
echo "">>Punto_B_discos.txt
echo "+1G">>Punto_B_discos.txt



for i in {1..2};do

echo "n">>Punto_B_discos.txt
echo "p">>Punto_B_discos.txt
echo "">>Punto_B_discos.txt
echo "">>Punto_B_discos.txt
echo "+1G">>Punto_B_discos.txt

done

echo "n">>Punto_B_discos.txt
echo "e">>Punto_B_discos.txt
echo "">>Punto_B_discos.txt
echo "">>Punto_B_discos.txt
echo "">>Punto_B_discos.txt



for i in {1..6};do


echo "n">>Punto_B_discos.txt
echo "">>Punto_B_discos.txt
echo "+1G">>Punto_B_discos.txt

done

echo "n">>Punto_B_discos.txt
echo "">>Punto_B_discos.txt
echo "">>Punto_B_discos.txt

echo "w">>Punto_B_discos.txt

sudo fdisk /dev/sdc < Punto_B_discos.txt

sudo mkfs.ext4 -F ext4 /dev/sdc1
sudo mkfs.ext4 -F /dev/sdc2
sudo mkfs.ext4 -F /dev/sdc3
sudo mkfs.ext4 -F /dev/sdc5
sudo mkfs.ext4 -F /dev/sdc6
sudo mkfs.ext4 -F /dev/sdc7
sudo mkfs.ext4 -F /dev/sdc8
sudo mkfs.ext4 -F /dev/sdc9
sudo mkfs.ext4 -F /dev/sdc10
sudo mkfs.ext4 -F /dev/sdc11

sudo mount /dev/sdc1 /Examenes-UTN/alumno_1/parcial_1
sudo mount /dev/sdc2 /Examenes-UTN/alumno_1/parcial_2
sudo mount /dev/sdc3 /Examenes-UTN/alumno_1/parcial_3

sudo mount /dev/sdc5 /Examenes-UTN/alumno_2/parcial_1
sudo mount /dev/sdc6 /Examenes-UTN/alumno_2/parcial_2
sudo mount /dev/sdc7 /Examenes-UTN/alumno_2/parcial_3

sudo mount /dev/sdc8 /Examenes-UTN/alumno_3/parcial_1
sudo mount /dev/sdc9 /Examenes-UTN/alumno_3/parcial_2
sudo mount /dev/sdc10 /Examenes-UTN/alumno_3/parcial_3

sudo mount /dev/sdc11 /Examenes-UTN/profesores


echo "/dev/sdc1 /Examenes-UTN/alumno_1/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc2 /Examenes-UTN/alumno_1/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc3 /Examenes-UTN/alumno_1/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sdc5 /Examenes-UTN/alumno_2/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc6 /Examenes-UTN/alumno_2/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc7 /Examenes-UTN/alumno_2/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sdc8 /Examenes-UTN/alumno_3/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc9 /Examenes-UTN/alumno_3/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdc10 /Examenes-UTN/alumno_3/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab

echo "/dev/sdc11 /Examenes-UTN/profesores ext4 defaults 0 0" | sudo tee -a /etc/fstab

clear

echo ""
echo "PARTICIONES CREADAS"
echo ""
sudo fdisk -l | grep /dev/sdc

echo ""
echo "PARTICIONES FORMATEADAS A ext4"
echo ""
lsblk -f

echo ""
echo "PARTICIONES MONTADAS"
echo "Si ves que dicen error dir es por el tree"
echo ""
tree /Examenes-UTN/

echo ""
echo "PARTICIONES MONTADAS DE FORMA PERSISTENTE"
echo ""


cat /etc/fstab
