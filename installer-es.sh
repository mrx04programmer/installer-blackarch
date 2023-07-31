#!/bin/bash

function print_error_and_exit {
  echo "Error: $1" >&2
  exit 1
}

if [[ $EUID -ne 0 ]]; then
  print_error_and_exit "Este script debe ejecutarse como root o puede que no sea compatible ."
fi

echo "          4SS-.     BLACKARCH INSTALLER                         "
echo "           4   '.                                        "
echo "           4    ^.                                       "
echo "           4     $                                       "
echo "           4     'b                                      "
echo "           4      'b.                                    "
echo "           4        $                                    "
echo "           4        Sr                                   "
echo "           4        SF                                   "
echo "-$b========4========Sb====*P=-                           "
echo "           4       *SSF                                  "
echo "           4        SS'                                  "
echo "           4       .SF                                   "
echo "           4       dP                                    "
echo "           4      F                                      "
echo "           4     @                                       "
echo "           4    .                                        "
echo "           J.                                            "
echo "          'SS    V1 - Mrx04programmer"
echo "[+] Instalando blackarch-tools ..."
# Instalar #
wget -q -O - https://blackarch.org/strap.sh | bash || print_error_and_exit "[-] Error al importar la clave PGP."
apt update || print_error_and_exit "[-] Error al actualizar la lista de paquetes."
apt install blackarch || print_error_and_exit "[-] Error al instalar las herramientas de BlackArch."
echo "[+] Las herramientas de BlackArch se han instalado correctamente."