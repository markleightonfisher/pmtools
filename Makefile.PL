use ExtUtils::MakeMaker;
WriteMakefile(
	VERSION => '1.00',
	NAME => "pmtools",
        DISTNAME => "pmtools",
	EXE_FILES => [  basepods, faqpods, modpods, pfcat, plxload,
			pmall, pman, pmcat, pmcheck, pmdesc, pmdirs, pmeth, pmexp,
			pmfunc, pminst, pmload, pmls, pmpath, pmvers,
			podgrep, podpath, pods, podtoc, sitepods,
			stdpods ],
	PM => { 'Devel/Loaded.pm' => '$(INST_LIBDIR)/Devel/Loaded.pm' }
             );

