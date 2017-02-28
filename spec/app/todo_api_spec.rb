require "spec_helper"

RSpec.describe TodoApi do
  def app
    TodoApi # this defines the active application for this test
  end

  describe 'GET todos' do
    context 'no todos' do
      it 'returns no todo' do
        get '/'
        expect(last_response.body).to eq '[]'
        expect(last_response.status).to eq 200
      end
    end

    context 'several todos' do
      before :each do
        @todos = ["hello", "world", "!"]
        $db = @todos.dup
      end

      it 'returns all the todos' do
        get '/'
        expect(last_response.body).to eq @todos.to_json
        expect(last_response.status).to eq 200
      end
    end
  end

  describe 'POST todos' do
    context 'with valid data' do
      it 'returns 200' do
        post '/', todo: 'Hello world'
        expect(last_response.status).to eq 200
      end

      it 'add a todo to db' do
        new_todo = 'Hello world'
        post '/', todo: new_todo
        expect($db.last).to eq(new_todo)
      end
    end

    context 'without data' do
      it 'returns 400' do
        post '/'
        expect(last_response.status).to eq 400
      end
    end
  end
end
