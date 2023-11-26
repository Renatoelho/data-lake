# Construindo um Data Lake: Entenda o Conceito e Veja na Prática

o Data Lake é um ***conceito/arquitetura*** de armazenamento de dados em vez de uma ferramenta específica. É um ***repositório centralizado*** que permite armazenar dados brutos ou semiestruturados de diversas fontes, como bancos de dados, logs, dispositivos IoT e muito mais. Os dados são mantidos em seu ***formato original***, o que permite a flexibilidade no ***processamento*** e na análise posterior. Para criar um ***Data Lake***, você normalmente usa uma combinação de ferramentas e serviços, como sistemas de armazenamento de objetos, bancos de dados distribuídos, ferramentas de processamento de ***Big Data*** e assim por diante.

Neste projeto estruturaremos um ***Data Lake*** com o ***MinIO*** como repositório de objetos, o ***DuckDB*** como engine de processamento SQL e o ***Jupyter Notebook*** como IDE de desenvolvimento. Iremos explorar como configurar essas ferramentas no ***Docker*** e ***Docker Compose*** para criar um ambiente prático.

# Apresentação em vídeo

<p align="center">
  <a href="https://youtube.com/@renato-coelho" target="_blank"><img src="images/construindo-data-lake.png" alt="Vídeo de apresentação do Projeto"></a>
</p>


# Referências

Install Docker Desktop on Ubuntu, ***docs.docker.com***. Disponível em: <https://docs.docker.com/desktop/install/ubuntu/>. Acesso em: 15 de nov. 2023.

The Compose file, ***docs.docker.com***. Disponível em: <https://docs.docker.com/compose/compose-file/03-compose-file/>. Acesso em: 15 de nov. 2023.

bitnami/minio, ***Docker Hub***. Disponível em: <https://hub.docker.com/r/bitnami/minio>. Acesso em: 18 nov. 2023.

High Performance Object Storage for AI, ***MinIO***. Disponível em: <https://min.io/>. Acesso em: 18 nov. 2023.

Project Jupyter Documentation, ***Jupyter***. Disponível em: <https://docs.jupyter.org/en/latest/>. Acesso em: 15 nov. 2023.

DuckDB is an in-process SQL OLAP database management system, ***DuckDB***. Disponível em: <https://duckdb.org/>. Acesso em: 14 nov. 2023.
