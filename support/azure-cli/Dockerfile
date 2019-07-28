FROM microsoft/azure-cli

RUN az extension add --name azure-devops

RUN az devops configure --defaults organization=https://dev.azure.com/opensocialism project=open-socialism
