# AspNetCoreMySql

# Aplicação .Net Core 2.0 acessando uma base MySQL em um container Docker

=> CRIANDO A APLICAÇÃO .Net Core 2.0

	- Criar a pasta "WebAppExemplo";
	
	- Abrir o terminal na pasta e criar o projeto ASP.Net MVC:
		=> dotnet new mvc --auth individual
		
	- Verificar a aplicação funcionando na porta padrão 5000:
		=> dotnet run 
	
=> CONFIGURANDO O ACESSO AO MySQL:

	- A aplicação está preparada para acessar uma base MySQL. Verifique a classe Startup;
	
	- A base mysql ainda não existe. Devemos portanto usar o docker para obter uma imagem MySQL e startar o container:
	
		=> docker pull mysqldb
		=> docker run --name mysqldb -p 3306:3306  -e MYSQL_ROOT_PASSWORD=secret -d mysql:8.0.0
		
	- Ao rodar o comando "docker ps -a",é possível verificar que a imagem mysqldb está rodando.
	
	- Agora é possível testar a aplicação registrando um usuário:
		=> dotnet run
		=> Acessar a aplicação (http://localhost:5000/) e cadastrar um usuário
		
	

