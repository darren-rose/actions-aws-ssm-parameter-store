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
env:	
  AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}	
  AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}	
  AWS_REGION: ${{ secrets.AWS_DEFAULT_REGION }}
with:
  key: '/some/key'
```
