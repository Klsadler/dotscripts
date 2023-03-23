SRCS = survivorWinners.sh funScript.sh

link: $(SRCS)
	for i in $(SRCS) ; do \
		ln -sf ~/.scripts/$$i ~/bin ; \
	done;	
	
unlink: $(SRCS)
	for i in $(SRCS) ; do \
	rm ~/bin/$$i ; \
	cp ~/.scripts/$$i ~/bin ; \
       done	

