json.array!(@ckeditor_tests) do |ckeditor_test|
  json.extract! ckeditor_test, :id, :title, :content
  json.url ckeditor_test_url(ckeditor_test, format: :json)
end
