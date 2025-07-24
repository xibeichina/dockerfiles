{application, 'rabbitmq_auth_backend_cache', [
	{description, "RabbitMQ Authentication Backend cache"},
	{vsn, "3.12.14"},
	{id, "v3.12.13-41-g42fc804"},
	{modules, ['rabbit_auth_backend_cache','rabbit_auth_backend_cache_app','rabbit_auth_cache','rabbit_auth_cache_dict','rabbit_auth_cache_ets','rabbit_auth_cache_ets_segmented','rabbit_auth_cache_ets_segmented_stateless']},
	{registered, [rabbitmq_auth_backend_cache_sup]},
	{applications, [kernel,stdlib,rabbit_common,rabbit]},
	{optional_applications, []},
	{mod, {rabbit_auth_backend_cache_app, []}},
	{env, [
	    {cache_ttl,      15000},
	    {cache_module,   rabbit_auth_cache_ets},
	    {cache_module_args, []},
	    {cached_backend, rabbit_auth_backend_internal},
	    {cache_refusals, false}
	  ]},
		{broker_version_requirements, []}
]}.