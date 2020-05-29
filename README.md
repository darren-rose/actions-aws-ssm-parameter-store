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
steps:
- name: lookup parameter store value
  id: lookup
  uses: darren-rose/actions-aws-ssm-parameter-store@v1
  with:
    key: '/some/key'
  env:	
    AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}	
    AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}	
    AWS_REGION: ${{ secrets.AWS_DEFAULT_REGION }}
- name: use parameter store value
  run: echo "The value was ${{ steps.lookup.outputs.value }}"
```
