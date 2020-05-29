#!/bin/sh -l

echo "looking up $INPUT_KEY in parameter store"

value=$(aws ssm get-parameters --names "$INPUT_KEY" --query "Parameters[*].{Value:Value}" --output text)
if [ -z "$value" ]; then
    exit 1
fi

echo ::set-output name=value::$value
