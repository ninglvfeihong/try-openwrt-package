mkdir := $(shell pwd)/$(lastword $(MAKEFILE_LIST)) 
mkdir := $(shell dirname $(mkdir))
pkg_build := fakeroot $(mkdir)/script/ipkg-build
pkg_make_index := $(mkdir)/script/ipkg-make-index.sh
pkg_src := $(mkdir)/pack/
pkg_dst := $(mkdir)/ipks/

package:
	@mkdir -p $(pkg_dst)
	@cd $(pkg_dst) && $(pkg_build) $(pkg_src)
	@cd $(pkg_dst) && $(pkg_make_index) . > Packages
	@gzip -9c $(pkg_dst)/Packages > $(pkg_dst)/Packages.gz
clean:
	$(RM) -r $(pkg_dst)

.PHONY: package clean
