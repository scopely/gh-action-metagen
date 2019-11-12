FROM mcr.microsoft.com/dotnet/core/sdk:2.2-alpine AS sdk
ARG MetagenVersion
RUN dotnet tool install \
    --tool-path /tools \
    --version $MetagenVersion \
    metagen

FROM mcr.microsoft.com/dotnet/core/runtime:2.2-alpine
COPY --from=sdk /tools /tools
ENV PATH /tools:$PATH
WORKDIR /root
ENTRYPOINT ["/tools/metagen"]
