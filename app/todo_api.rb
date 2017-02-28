class TodoApi < Sinatra::Base

  get '/' do
    $db.to_json
  end

  post '/' do
    halt(400, 'Missing todo') unless params['todo']

    $db << params['todo']
    200
  end

end
