json.array!(@funcionarios) do |funcionario|
  json.extract! funcionario, :id, :departamento_id, :nome, :cargo, :sexo, :endereco
  json.url funcionario_url(funcionario, format: :json)
end
