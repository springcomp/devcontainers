# Azure Functions (.NET 6.0)

This devcontainer definition enables development of an Azure Function App
using [.NET 6.0](https://devblogs.microsoft.com/dotnet/announcing-net-6/) and [Azure Functions Core Tools v4](https://azure.microsoft.com/fr-fr/updates/generally-available-azure-functions-runtime-40/). It includes a running local storage emulator using
[Azurite](https://docs.microsoft.com/en-us/azure/storage/common/storage-use-azurite?tabs=visual-studio).

## Usage

The `.devcontainer/templates` folder contains a set of `dotnet new` custom templates.
Please, copy the templates you need to make available to the container.

The `.devcontainer/packages` folder contains custom NuGet packages.
Please, copy all the private packages you need available from the container.
 
Run the devcontainer by launching an instance of Visual Studio Code in this folder:

```pwsh
code .
```

