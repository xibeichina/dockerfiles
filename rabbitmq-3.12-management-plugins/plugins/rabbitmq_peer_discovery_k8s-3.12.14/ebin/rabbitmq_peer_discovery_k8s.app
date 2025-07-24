{application, 'rabbitmq_peer_discovery_k8s', [
	{description, "Kubernetes-based RabbitMQ peer discovery backend"},
	{vsn, "3.12.14"},
	{id, "v3.12.13-41-g42fc804"},
	{modules, ['rabbit_peer_discovery_k8s','rabbitmq_peer_discovery_k8s','rabbitmq_peer_discovery_k8s_app','rabbitmq_peer_discovery_k8s_node_monitor','rabbitmq_peer_discovery_k8s_sup']},
	{registered, [rabbitmq_peer_discovery_k8s_sup]},
	{applications, [kernel,stdlib,rabbit_common,rabbitmq_peer_discovery_common,rabbit]},
	{optional_applications, []},
	{mod, {rabbitmq_peer_discovery_k8s_app, []}},
	{env, []}
]}.