#!/bin/bash

function print_error_and_exit {
  echo "Error: $1" >&2
  exit 1
}

if [[ $EUID -ne 0 ]]; then
  print_error_and_exit "This script must be run as root or it may not be compatible."
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
echo "[+] Installing blackarch-tools ..."
# Install #
wget -q -O - https://blackarch.org/strap.sh | bash || print_error_and_exit "[-] Error importing the PGP key."
apt update || print_error_and_exit "[-] Error updating the package list."
apt install blackarch || print_error_and_exit "[-] Error installing BlackArch tools."
echo "[+] BlackArch tools have been installed successfully."
