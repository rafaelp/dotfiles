#Bash profile by Tapajos

if [ "$PS1" ]; then
	for resource in $(pwd)/profile/*; do
		source "$resource"
	done
fi