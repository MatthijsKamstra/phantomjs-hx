package js.phantomjs;

/**
	The interface with various PhantomJS functionalities is carried out using a
	new host object named phantom, added as a child of the `window` object.

	source: http://phantomjs.org/api/phantom/
 **/
@:native("phantom")
extern class Phantom {
		/**
			This read-only property is an array of the arguments passed to
			the script. Deprecated: Please use system.args from the System module.
		 **/
		public static var args:Array<String>;

		/**
			This property stores the path which is used by injectJs
			function to resolve the script name. Initially it is set to the location
			of the script invoked by PhantomJS.
		 **/
		public static var libraryPath:String;

		/**
			This read-only property stores the name of the invoked script file.
			Deprecated: Please use system.args[0] from the System module.
		 **/
		public static var scriptName:String;

		/**
			This read-only property holds PhantomJS version. Example value: {
			major:1, minor:0, patch:0 }.
		 **/
		public static var version:{major:Int, minor:Int, patch:Int};

		/**
		 *  Controls whether the CookieJar is enabled or not. Defaults to true.
		 */
		public static var cookiesEnabled:Bool;

		/**
		 *  Get or set Cookies for any domain (though, for setting, use of phantom.addCookie is preferred).
		 *  These Cookies are stored in the CookieJar and will be supplied when opening pertinent WebPages.
		 *
		 *  This array will be pre-populated by any existing Cookie data stored in the cookie file specified in the PhantomJS startup config/command-line options, if any.
		 */
		public static var cookies:{};

		/**
		 *  Add a Cookie to the CookieJar. Returns true if successfully added, otherwise false.1
		 *
		 *  @param cookieObj -
		 *  @return Bool
		 */
		public static function addCookie(cookieObj:CookieObj):Bool;

		/**
		 *  Delete all Cookies in the CookieJar
		 */
		public static function clearCookies():Void;

		/**
		 *  Delete any Cookies in the CookieJar with a ‘name' property matching cookieName.
		 *  Returns true if successfully deleted, otherwise false.
		 *
		 *  @param cookieName -
		 *  @return Bool
		 */
		public static function deleteCookie(cookieName:String):Bool;

		/**
			Exits the program with the specified return value. If no return value is
			specified, it is set to 0.
		 **/
		public static function exit(?returnValue:Int):Void;

		/**
			Injects external script code from the specified file. If the file can
			not be found in the current directory, libraryPath is used for
			additional look up.  This function returns true if injection is
			successful, otherwise it returns false.
		 **/
		public static function injectJs(filename:String):Bool;

}

typedef CookieObj = {
	var name:String; // 'Added-Cookie-Name',
	var value:String;// 'Added-Cookie-Value',
	var path:String;// '/foo',
	@:optional var domain:String;// '.google.com'
	@:optional var httponly:Bool; //' : true,
	@:optional var secure:Bool; //'   : false,
	@:optional var expires:Date; //'  : (new Date()).getTime() + (1000 * 60 * 60)   /* <-- expires in 1 hour */
};


