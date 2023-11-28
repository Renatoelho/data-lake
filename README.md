# Construindo um Data Lake: Entenda o Conceito e Veja na Prática

o Data Lake é um ***conceito/arquitetura*** de armazenamento de dados em vez de uma ferramenta específica. É um ***repositório centralizado*** que permite armazenar dados brutos ou semiestruturados de diversas fontes, como bancos de dados, logs, dispositivos IoT e muito mais. Os dados são mantidos em seu ***formato original***, o que permite a flexibilidade no ***processamento*** e na análise posterior. Para criar um ***Data Lake***, você normalmente usa uma combinação de ferramentas e serviços, como sistemas de armazenamento de objetos, bancos de dados distribuídos, ferramentas de processamento de ***Big Data*** e assim por diante.

Neste projeto estruturaremos um ***Data Lake*** com o ***MinIO*** como repositório de objetos, o ***DuckDB*** como engine de processamento SQL e o ***Jupyter Notebook*** como IDE de desenvolvimento. Iremos explorar como configurar essas ferramentas no ***Docker*** e ***Docker Compose*** para criar um ambiente prático.


### Requisitos

+ ![Docker](https://img.shields.io/badge/Docker-23.0.3-E3E3E3)

+ ![Docker-compose](https://img.shields.io/badge/Docker--compose-1.25.0-E3E3E3)

+ ![Git](https://img.shields.io/badge/Git-2.25.1%2B-E3E3E3)

+ ![Ubuntu](https://img.shields.io/badge/Ubuntu-20.04-E3E3E3)


### Ativando e acessando os serviços

+ Clonando o repositório:

```bash
git clone https://github.com/Renatoelho/data-lake.git data-lake
```

+ Acessando o repositório:

```bash
cd data-lake/
```

+ Ativando as aplicações:

```bash
docker compose -p project-data-lake -f docker-compose-abor.yaml up -d
```

+ URLs de acesso:

|Serviço            |URL           |
|-------------------|--------------| 
|Minio API          |minio-s3:9000 |
|Minio Interface WEB|[localhost:9001](http://localhost:9001)|
|Server Jupyter Notebook|[localhost:9002](http://localhost:9002)|
|Token Jupyter Notebook|[localhost:9003](http://localhost:9003)|

+ Desativando as aplicações:

```bash
docker compose -p project-data-lake -f docker-compose-abor.yaml down
```


# Apresentação em vídeo

<p align="center">
  <a href="https://youtube.com/@renato-coelho" target="_blank"><img src="docs/images/construindo-data-lake.png" alt="Vídeo de apresentação do Projeto"></a>
</p>


# Referências

Data Lake, ***Wikipédia***. Disponível em: <https://pt.wikipedia.org/wiki/Data_Lake>. Acesso em: 22 out. de 2023.

DATA LAKE: SAIBA COMO FUNCIONA A TECNOLOGIA DE ARMAZENAMENTO DE DADOS, ***Tera Blog***. Disponível em: <https://blog.somostera.com/data-science/data-lake>. Acesso em: 25 out. de 2023.

Unlock the full potential of a modern data warehouse with Delta Lake, ***Blueprint***. Disponível em: <https://bpcs.com/blog/why-delta-lake>. Acesso em: 25 out. de 2023.

Medallion Architecture, ***Data Engineering***. Disponível em: <https://dataengineering.wiki/Concepts/Medallion+Architecture>. Acesso em: 25 out. de 2023.

O que é um data lake?, ***AWS***. Disponível em: <https://aws.amazon.com/pt/big-data/datalakes-and-analytics/what-is-a-data-lake/>. Acesso em: 28 out. de 2023.

Install Docker Desktop on Ubuntu, ***docs.docker.com***. Disponível em: <https://docs.docker.com/desktop/install/ubuntu/>. Acesso em: 22 out. 2023.

The Compose file, ***docs.docker.com***. Disponível em: <https://docs.docker.com/compose/compose-file/03-compose-file/>. Acesso em: 22 out. 2023.

bitnami/minio, ***Docker Hub***. Disponível em: <https://hub.docker.com/r/bitnami/minio>. Acesso em: 22 out. 2023.

High Performance Object Storage for AI, ***MinIO***. Disponível em: <https://min.io/>. Acesso em: 22 out. 2023.

Project Jupyter Documentation, ***Jupyter***. Disponível em: <https://docs.jupyter.org/en/latest/>. Acesso em: 22 out. 2023.

DuckDB is an in-process SQL OLAP database management system, ***DuckDB***. Disponível em: <https://duckdb.org/>. Acesso em: 25 out. 2023.
