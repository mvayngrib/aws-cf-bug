#!/bin/bash

source $(dirname $0)/env.sh

$(dirname $0)/delete.sh && $(dirname $0)/create.sh
