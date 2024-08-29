#!/bin/bash  
if [ "$PWD" = "cicd-exercicio-01" ]; then
    exit 0  # Retorna sucesso (código 0)
else
    exit 1  # Retorna erro (código 1)
fi