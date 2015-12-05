BUILDDIR=$(CURDIR)/build
SOURCES=$(wildcard *.elm)
TARGETS=$(patsubst %.elm,$(BUILDDIR)/%.html,$(SOURCES))
ELM_EXACT_DEPENDENCIES=elm-stuff/exact-dependencies.json

all: $(BUILDDIR) $(TARGETS)

$(BUILDDIR):
	mkdir -p $(BUILDDIR)

$(BUILDDIR)/%.html: %.elm
	elm make --warn --output $@ $<

$(SOURCES): $(ELM_EXACT_DEPENDENCIES)

$(ELM_EXACT_DEPENDENCIES): elm-package.json
	elm package install
	touch $@
