#!/bin/bash
for t in /workspace/.devcontainer/templates/*nupkg
do
  printf "\e[1;36mInstalling dotnet new $t template.\n\e[0m"
  b=${t##*/}
  p=${b%.*}
  package=$(echo $p | awk '{ sub(/\.[0-9]+\.[0-9]+\.[0-9]+(\-[a-z0-9_\-]+)?$/, ""); print  }')
  printf "\e[1;30mdotnet new -i $package --nuget-source /workspace/.devcontainer/templates\n\e[0m"
  dotnet new -i $package --nuget-source /workspace/.devcontainer/templates
done

