json.array!(@checkpoints) do |checkpoint|
  json.extract! checkpoint, :id
  json.url checkpoint_url(checkpoint, format: :json)
end
