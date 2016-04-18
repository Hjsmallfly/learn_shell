#!/bin/bash

var1=10
var2=3

result=$(bc << EOF
scale = 4
$var1 / $var2
EOF
)

echo $result
