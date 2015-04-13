json.array!(@empresas) do |empresa|
  json.extract! empresa, :id, :nome, :endereco, :telefone
  json.url empresa_url(empresa, format: :json)
end
