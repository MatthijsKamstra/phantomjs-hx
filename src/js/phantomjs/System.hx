package js.phantomjs;

/**
	A set of functions to access system-level functionalities is available,
	modelled after CommonJS System proposal.

	source: http://phantomjs.org/api/system/
 **/
@:jsRequire('system')
extern class System {
		/**
			the name of the platform, the value is always phantomjs.
		 **/
		public static var platform:String;

		/**
			 returns the list (as key value pair) of the environment variables.
		 **/
		public static function env():{};

		/**
			An object providing information about the operating system,
			including architecture, name, and version.
		 **/
		public static function os():{};

		/**
		 * Introduced: PhantomJS 1.8 Read-only. The PID (Process ID) for the currently executing PhantomJS process.
		 */
		public static function pid():Int;

		/**
			returns the list of command-line arguments. The first one is always the
			script name, it is followed by the subsequent arguments.
		 **/
		public static var args:Array<String>;
}
