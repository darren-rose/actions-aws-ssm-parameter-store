# github-action-using-docker

This action retrieves values from AWS parameter store.

## Inputs

### `key`

**Required** The parameter store key.

## Outputs

### `value`

The parameter store value.

## Example usage
```
uses: darren-rose/github-action-using-docker@v1
with:
  key: 'Victor the Vacuum Cleaner'
```