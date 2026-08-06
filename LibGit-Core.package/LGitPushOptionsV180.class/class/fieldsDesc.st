field definition
fieldsDesc
	"self rebuildFieldAccessors"

	^ #(
	LGitOptionsVersionsEnum version;

	"
	 * If the transport being used to push to the remote requires the creation
	 * of a pack file, this controls the number of worker threads used by
	 * the packbuilder when creating that pack file to be sent to the remote.
	 *
	 * If set to 0, the packbuilder will auto-detect the number of threads
	 * to create. The default value is 1.
	 "
	uint pb_parallelism;

	"
	 * Callbacks to use for this push operation
	 "
	LGitRemoteCallbacks callbacks;
		
	"
	* Proxy options to use, by default no proxy is used.
	"
	LGitProxyOptions proxy_opts;

	"
	 * Whether to allow off-site redirects.  If this is not
	 * specified, the `http.followRedirects` configuration setting
	 * will be consulted.
	"
	LGitRemoteRedirectEnum follow_redirects;

	"
	 * Extra headers for this push operation
	"
	LGitStringArray custom_headers;
	
	"
	 * 'Push options' to deliver to the remote.
	"
	LGitStringArray remote_push_options;
)