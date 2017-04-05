package js.phantomjs;
extern class Response {
		/**
			 stores all HTTP headers as key-value pair (set these BEFORE calling write for the first time)
		 **/
		public var headers:Dynamic<String>;

		// /**
		//    sets the returned status code
		//  **/
		// public var statusCode:Int;

		// /**
		//   sends a chunk for the response body (it can be called multiple times)
		//  **/
		// public function write(data:String):Void;

		// /**
		//   close the HTTP connection

		//   To avoid Client detecting a connection drop,
		//   remember to use write() at least once. Sending an empty string (i.e.
		//   write("")) would be enough if the only aim is, for example, to return a
		//   HTTP 200 Success
		//  **/
		// public function close():Void;


		// http://phantomjs.org/api/webpage/handler/on-resource-received.html

		public var id : Int; // : the number of the requested resource
		public var url : String; // the URL of the requested resource
		public var time : Date; // object containing the date of the response
		// public var headers : list of http headers
		public var bodySize : Int; //size of the received content decompressed (entire content or chunk content)
		public var contentType : String; // the content type if specified
		public var redirectURL : String; //if there is a redirection, the redirected URL
		public var stage : String; //“start”, “end” (FIXME: other value for intermediate chunk?)
		public var status : String; // http status code. ex: 200
		public var statusText  : String; // http status text. ex: OK


}
