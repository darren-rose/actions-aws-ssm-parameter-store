#!/bin/sh -l

echo "looking up $1 in parameter store"

value=$(aws ssm get-parameters --names "$1" --query "Parameters[*].{Value:Value}" --output text)
if [ -z "$value" ]; then
    exit 1
fi

echo ::set-output name=value::$value
