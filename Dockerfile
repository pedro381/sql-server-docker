# Use a imagem oficial do SQL Server
FROM mcr.microsoft.com/mssql/server:2019-latest

# Defina as variáveis de ambiente para a configuração do SQL Server
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=pedrobr381
ENV MSSQL_PID=Express

# Instale o utilitário curl (pode ser usado para download de scripts, por exemplo)
RUN apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*

# Exemplo: Baixe e execute um script SQL após a inicialização do SQL Server
#COPY ./SeuScriptSQL.sql /usr/src/app/
#WORKDIR /usr/src/app/

# Exemplo: Use o utilitário curl para baixar um script SQL da web
# RUN curl -O https://www.seudominio.com/SeuScriptSQL.sql

# Exemplo: Execute o script SQL após a inicialização do SQL Server
# RUN /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P SuaSenhaSuperSecreta -d SeuBancoDeDados -i SeuScriptSQL.sql

# Exponha a porta padrão do SQL Server
EXPOSE 1433
