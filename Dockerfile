FROM microsoft/aspnetcore:2-jessie
COPY dist /app
WORKDIR /app
EXPOSE 80/TCP
ENTRYPOINT ["dotnet","AspNetCoreMySql.dll"]
