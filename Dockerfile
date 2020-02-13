FROM microsoft/dotnet:2.2-sdk
RUN RUN apt-get update && apt-get install -y nodejs nodejs-npm
RUN apt-get -q autoremove \
    && apt-get -q clean -y \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/*.bin
RUN dotnet tool install --global dotnet-sonarscanner
