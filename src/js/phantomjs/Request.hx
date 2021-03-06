package js.phantomjs;
extern class Request{

		//  http://phantomjs.org/api/webpage/handler/on-resource-requested.html

		/**
			defines the request method (GET, POST, ...)
		 **/
		public var method:String;

		/**
			contains the complete request URL, including the query string (if any)
		 **/
		public var url:String;

		/**
			has the actual HTTP version
		 **/
		// public var httpVersion:String;

		/**
			stores all HTTP headers as key-value pair
		 **/
		public var headers:Dynamic<String>;

		/**
			request body (only POST and PUT method)
		 **/
		// public var post:String;

		/**
			if Content-Type is set to
			application/x-www-form-urlencoded (default for FORM submit), the content
			will be URL-decoded and the undecoded content will be stored in an extra
			property postRaw
		 **/
		// public var postRaw:String;

		/**
		 *  Date object containing the date of the request
		 */
		public var time:Date;

		/**
		 *  the number of the requested resource
		 */
		public var id:Int;
}
