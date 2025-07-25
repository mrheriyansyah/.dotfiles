#!/bin/bash

echo "Which file you want to push?"
read file_path

echo "Write the message:"
read comm_message

git add $file_path
git commit -m "$comm_message"
git push origin main
