{application, 'rabbitmq_federation', [
	{description, "RabbitMQ Federation"},
	{vsn, "3.12.14"},
	{id, "v3.12.13-41-g42fc804"},
	{modules, ['Elixir.RabbitMQ.CLI.Ctl.Commands.FederationStatusCommand','Elixir.RabbitMQ.CLI.Ctl.Commands.RestartFederationLinkCommand','rabbit_federation_app','rabbit_federation_db','rabbit_federation_event','rabbit_federation_exchange','rabbit_federation_exchange_link','rabbit_federation_exchange_link_sup_sup','rabbit_federation_link_sup','rabbit_federation_link_util','rabbit_federation_parameters','rabbit_federation_pg','rabbit_federation_queue','rabbit_federation_queue_link','rabbit_federation_queue_link_sup_sup','rabbit_federation_status','rabbit_federation_sup','rabbit_federation_upstream','rabbit_federation_upstream_exchange','rabbit_federation_util','rabbit_log_federation']},
	{registered, [rabbitmq_federation_sup]},
	{applications, [kernel,stdlib,rabbit_common,rabbit,amqp_client]},
	{optional_applications, []},
	{mod, {rabbit_federation_app, []}},
	{env, [
	    {pgroup_name_cluster_id, false},
	    {internal_exchange_check_interval, 90000}
	  ]},
		{broker_version_requirements, []}
]}.