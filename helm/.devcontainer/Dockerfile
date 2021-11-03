FROM mcr.microsoft.com/dotnet/sdk:3.1

RUN apt-get update \
 && apt-get install wget apt-transport-https software-properties-common -y \
 && wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb \
 && dpkg -i packages-microsoft-prod.deb \
 && apt-get update \
 && apt-get install -y powershell \
 && wget https://get.helm.sh/helm-v3.4.1-linux-amd64.tar.gz \
 && tar xvf helm-v3.4.1-linux-amd64.tar.gz \
 && mv linux-amd64/helm /usr/local/bin \
 && rm -rf linux-amd64/ \
 && rm helm-v3.4.1-linux-amd64.tar.gz

RUN git clone https://github.com/springcomp/azure-api-management-devops-resource-kit.git /tmp/apim-templates/ \
 && cd /tmp/apim-templates/src/APIM_ARMTemplate/apimtemplate \
 && git checkout ca4ce013ce5e7f8fd23b40e6b57f56c96b9b9250 \
 && dotnet publish -c Release \
 && dotnet tool install -g --add-source ./bin/Release/ apim-templates

SHELL ["/usr/bin/pwsh", "-c"]

RUN New-Item -Path (Split-Path $PROFILE -Parent) -ItemType Directory | Out-Null; \
    Install-Module -Name Az -Scope CurrentUser -Repository PSGallery -Force; \
    Add-Content -Path $PROFILE -Value "Set-Alias -Name Start-Deploy -Value /workspace/deploy.ps1 -Scope Global"; \
    Add-Content -Path $PROFILE -Value "Enable-AzureRmAlias -Scope CurrentUser";
 
ENV PATH "$PATH:/root/.dotnet/tools/"

WORKDIR /workspace
