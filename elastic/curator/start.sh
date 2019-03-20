#!/bin/sh
set -e

crond -l 2 && curator $@
