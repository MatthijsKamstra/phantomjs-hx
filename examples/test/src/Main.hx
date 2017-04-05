package;

import js.Browser.console;
import js.Browser.document;
import js.phantomjs.Phantom;
import js.phantomjs.PhantomTools;

class Main {

	public function new() {
		var page = WebPage.create();
		page.open("some_arbitrary_webpage.html", function(status){
			PhantomTools.injectThis(page); // include this script in the opened page
			PhantomTools.exposeWindowErrors(page); // "unhandle" the default window errors for the page.
			page.onError = function(x,i) trace("page error: " + x); // phantom handles errors on this page
			var argument = 'blah blah blah'; // set some text to send to the page
			var result = page.evaluate(function(argument){
				var h = new Hash<String>(); // use any Haxe library method, courtesy of injectThis.
				document.innerHTML = argument; // set the document content with the argument
				untyped h.invalid_method(); // trigger an error, for illustration purposes
			}, argument); // pass the text to the page
		}
		page.render("output.png"); // render the page.
		Phantom.exit(); // exit phantomjs
	}


	static public function main() {
		if (PhantomTools.noPhantom()) return; // exit if not in phantom scope
		var app = new Main();
	}
}
