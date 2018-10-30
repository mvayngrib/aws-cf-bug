#!/bin/bash

source $(dirname $0)/env.sh

$(dirname $0)/recreate.sh && $(dirname $0)/update.sh
