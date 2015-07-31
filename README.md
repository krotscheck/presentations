My Convention Presentations
===========================

If you're interested in my presentations, you can go look at them here: 
https://krotscheck.github.io/presentations/


Building your own presentations
-------------------------------

If you would like to use this repository as a base from which to build your 
own presentation website, simply clone the ``master`` branch and build from there.
Once you do that, you will need node and npm.

	// Clone the repository.
    git clone git@github.com:krotscheck/presentations.git
    cd ./presentations
    
	// Install npm on ubuntu:
	apt-get install nodejs nodejs-legacy npm


The following commands will get you started:

    // This will install miscellaneous runtime dependencies.
    npm install
    
    // This will start a VERY basic presentation wizard. To modify the 
    // output, make changes in ./src/template/index.hbs
    npm run new
    
    // This will create a local webhost, serving all of your presentations. 
    // It will autodetect changes and refresh any applicable pages.
    npm run serve
    
    // This will construct your current presentations, and push them to 
    // gh-pages.
    npm run release
