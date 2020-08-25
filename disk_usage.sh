
#!/bin/bash

MY_DIRECTORIES="/home /var/log"

echo "Top Ten Directories"

for DIR in $MY_DIRECTORIES

do

	echo "The $DIR Directory:"

	du -S $DIR 2>/dev/empty |
		sort -rn |
		sed '{11,$D; =}' |

		# pipe the first result for another one to clean it
		sed 'N; s/\n/ /' |


done

exit
