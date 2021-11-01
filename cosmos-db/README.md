# CosmosDb Emulator (.NET Core 3.1)

This devcontainer definition enables development of a C# application
using .NET Core 3.1. It includes a running local [CosmosDb emulator](https://docs.microsoft.com/en-us/azure/cosmos-db/local-emulator?tabs=ssl-netstd21#run-on-linux-macos).

## Usage

The `.devcontainer/templates` folder contains a set of `dotnet new` custom templates.
Please, copy the templates you need to make available to the container.

The `.devcontainer/packages` folder contains custom NuGet packages.
Please, copy all the private packages you need available from the container.
 
Run the devcontainer by launching an instance of Visual Studio Code in this folder:

```pwsh
code .
```

