#!/bin/bash


npm run build

scp -r ./public/ tusharbhardwaj.tech:/var/www/my-portfolio-v2

echo "Deployment Completed"

