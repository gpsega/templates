#!/bin/bash

set -e

# Ejecutar comandos personalizados si existen
if [ -f "/opt/odoo/custom.sh" ]; then
    bash /opt/odoo/custom.sh
fi

# Iniciar Odoo
exec odoo "$@"
