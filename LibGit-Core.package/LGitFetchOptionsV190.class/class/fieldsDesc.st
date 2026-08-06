field definition
fieldsDesc
	^ #(
		LGitOptionsVersionsEnum version;

		"
		 * Callbacks to use for this fetch operation
		 "
		LGitRemoteCallbacks callbacks;

		"
		 * Whether to perform a prune after the fetch
		 "
		LGitFetchPruneTypeEnum prune;

		"
		 * Whether to write the results to FETCH_HEAD. Defaults to
		 * on. Leave this default in order to behave like git.
		 "
		uint update_fetchhead;

		"
		 * Determines how to behave regarding tags on the remote, such
		 * as auto-downloading tags for objects we're downloading or
		 * downloading all of them.
		 *
		 * The default is to auto-follow tags.
		 "
		LGitRemoteAutotagOptionTypeEnum download_tags;

		"
	    * Proxy options to use, by default no proxy is used.
	   "
		LGitProxyOptions proxy_opts;
		
		"
		 * Depth of the fetch to perform, or GIT_FETCH_DEPTH_FULL (or 0) for full history, or GIT_FETCH_DEPTH_UNSHALLOW to ""unshallow"" a shallow repository.
			The default is full (GIT_FETCH_DEPTH_FULL or 0)."
		int depth;

		" 
		 * Whether to allow off-site redirects. If this is not specified, the http.followRedirects configuration setting will be consulted.
		"
		LGitRemoteRedirectEnum follow_redirects;

		"
	  	 * Extra headers for this fetch operation
	 	"
		LGitStringArray custom_headers;
	)