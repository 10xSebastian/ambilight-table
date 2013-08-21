#!/bin/bash
haml ./example/src/example.haml ./example/example.html && sass ./src/css/ambilight-table.sass ./lib/css/ambilight-table.css && coffee --compile --output ./lib/js/ ./src/js/ambilight-table.coffee && sass ./example/src/example.sass ./example/example.css
exit