#!/bin/bash

	for i in {1..10000}
	do
		/root/radlogin/radlogin -profile acctStop -login login"$i" &

		/root/radlogin/radlogin -profile Authentication -login login"$i" -password 123 &

    		/root/radlogin/radlogin -profile acctStart -login login"$i" &
	done

 # Aguarda todas as chamadas em segundo plano terminarem
 wait
