#!/bin/bash

function usage {
  echo "Usage: $0 <namespace> <resource_type> <kubectl_command>"
  echo "Example: $0 kube-system pod get"
  exit 1
}

if [ $# -ne 3 ]; then
  usage
fi

NAMESPACE=$1
RESOURCE_TYPE=$2
KUBECTL_COMMAND=$3

kubectl $KUBECTL_COMMAND $RESOURCE_TYPE -n $NAMESPACE | tail -n +2 | while read line
do
  NAME=$(echo $line | awk '{print $1}')
  CPU=$(echo $line | awk '{print $2}')
  MEMORY=$(echo $line | awk '{print $3}')

  echo "$RESOURCE_TYPE, $NAMESPACE, $NAME, $CPU, $MEMORY"
done
