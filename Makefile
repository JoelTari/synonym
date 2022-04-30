.PHONY: install uninstall linter
SCRIPT := synonym

install:
	cp $(SCRIPT) ${HOME}/.local/bin/$(SCRIPT)
	chmod 755 ${HOME}/.local/bin/$(SCRIPT)

uninstall:
	rm -f ${HOME}/.local/bin/$(SCRIPT)

linter:
	shellcheck ./$(SCRIPT)
