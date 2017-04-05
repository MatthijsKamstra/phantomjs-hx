package;

import js.Browser.console;
import js.phantomjs.Phantom;
import js.phantomjs.PhantomTools;

class Main {

    // https://github.com/ariya/phantomjs/blob/master/examples/hello.js
	public function new() {
        console.log('hello world');
        Phantom.exit(); // exit phantomjs
    }

	static public function main() {
		if (PhantomTools.noPhantom()) return; // exit if not in phantom scope
		var app = new Main();
	}
}
