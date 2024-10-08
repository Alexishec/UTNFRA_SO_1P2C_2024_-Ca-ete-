sudo rm -r /home/vagrant/Estructura_Asimetrica
sudo mkdir -p /home/vagrant/Estructura_Asimetrica/{correo/{cartas_{1..100},carteros_{1..10}},clientes/cartas_{1..100}}
tree /home/vagrant/Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4
