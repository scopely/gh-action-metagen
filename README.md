# GitHub Action - Metagen

Automatically create and manage Unity-style .meta files
within specific directories of the repository

## Inputs

### `directory`

**Required** The sub-folder in which to sync .meta files.

## Example usage

```yaml
uses: scopely/gh-action-metagen@v1
with:
  directory: Game.Common/Runtime/
```

## Deploy process

```sh
MetagenVersion=1.0.7 # UPDATE ME
docker build . \
  --build-arg MetagenVersion=$MetagenVersion \
  -t wbserver/metagen:$MetagenVersion
docker push wbserver/metagen:$MetagenVersion
```
