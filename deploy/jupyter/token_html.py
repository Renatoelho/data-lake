#!/usr/bin/python3

import re
from time import sleep

with open("/home/jupyter/python/index.html", "r") as arq:
    conteudo = arq.read()

if token := re.findall(r"token=[\w]{48}", conteudo):
    token = str(token[0]).split("=")[1]

    html = f"""<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="Token de acesso" content="width=device-width, initial-scale=1.0">
        <title>Token de acesso ao Servidor Jupyter Notebook</title>
    </head>
    <body>
        <br>
        <h1>Token de acesso ao Servidor Jupyter Notebook:</h1>
        <br>
        <h2>{token}</h2>
    </body>
    </html>
    """

    with open("/home/jupyter/python/index.html", "w") as arq:
        arq.write(html)

sleep(99999999)