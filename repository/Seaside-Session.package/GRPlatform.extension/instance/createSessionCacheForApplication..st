*seaside-session
createSessionCacheForApplication: anApplication
	"GemStone/S should create a WABulkReapingCache without a mutex here"
	^ WAMutualExclusionCache on: (WAHashCache
		initialSize: 13
		maximumSize: (anApplication configuration at: #maximumSize)
		maximumAbsoluteAge: (anApplication configuration at: #maximumAbsoluteAge)
		maximumRelativeAge: (anApplication configuration at: #maximumRelativeAge)
		overflowAction: (anApplication configuration at: #overflowAction))