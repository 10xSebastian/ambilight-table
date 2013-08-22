#!/bin/bash
haml ./example/src/example.haml ./example/example.html && 
sass ./src/css/ambilight-table.sass ./lib/css/ambilight-table.css && 
coffee --output ./lib/js/ --compile ./src/js/ambilight-table.coffee && 
coffee --output ./example/ --compile ./example/src/example.coffee && 
cat ./vendor/canvasBlur.js >> ./lib/js/ambilight-table.js && 
sass ./example/src/example.sass ./example/example.css
exit