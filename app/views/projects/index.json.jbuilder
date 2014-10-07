json.array!(@projects) do |project|
  json.extract! project, :id, :title
  json.url project_url(project, format: :json)
end

$("projects").update("<%= escape_javascript(render(@projects)) %>");
// or
$("#projects").html("<%= escape_javascript(render(@projects)) %>");