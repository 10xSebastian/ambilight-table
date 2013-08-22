#!/bin/bash
haml ./example/src/example.haml ./example/example.html && 
sass ./src/css/ambilight-table.sass ./lib/css/ambilight-table.css && 
coffee -cj ./lib/js/ambilight-table.js ./src/js/ambilight-background.coffee ./src/js/ambilight-border.coffee ./src/js/ambilight-table.coffee && 
coffee --output ./example/ --compile ./example/src/example.coffee && 
sass ./example/src/example.sass ./example/example.css
exit