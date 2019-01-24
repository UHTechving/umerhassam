json.extract! project, :id, :title, :icon, :description, :public, :created_at, :updated_at
json.url project_url(project, format: :json)
