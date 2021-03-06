class Organization::Operations::DeleteEndpoint < EndpointOperation
  step :call_nested
  step App::Steps::BuildPositiveActionResult
  fail App::Steps::AddErrorJson

  def call_nested(options, params:, policy:, **)
    call_nested_logic_operation(Organization::Operations::Delete, options,
      policy: policy, params: params)
  end
end
