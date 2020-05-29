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
uses: darren-rose/actions-aws-ssm-parameter-store@v2
with:
  key: '/some/key'
```
