Swagger::Docs::Config.register_apis(
    {
        "1.0" => {
            # the extension used for the API
            :api_extension_type => :json,
            # the output location where your .json files are written to
            :api_file_path => "public/api/",
            # the URL base path to your API
            #:base_path => "#{Settings.site.scheme}://#{Settings.site.host}/api",
            :base_path => "localhost:3000/api",
            # if you want to delete all .json files at each generation
            :clean_directory => true,
            # add custom attributes to api-docs
            :attributes => {
                :info => {
                    :title => "有招接口文档",
                    :description => "",
                    :termsOfServiceUrl => "",
                    :contact => "",
                    :license => "",
                    :licenseUrl => ""
                }
            }
        }
    })