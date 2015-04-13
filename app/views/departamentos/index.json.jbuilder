json.array!(@departamentos) do |departamento|
  json.extract! departamento, :id, :empresa_id, :nome, :ramal, :responsavel
  json.url departamento_url(departamento, format: :json)
end
