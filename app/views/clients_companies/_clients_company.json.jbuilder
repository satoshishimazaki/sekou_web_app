json.extract! clients_company, :id, :name, :address_post, :prefecture_id, :address_city, :address_building, :established, :president, :employees_number, :employees_memo, :stock, :stock_memo, :homepage, :time_start, :time_end, :time_memo, :average_ages, :domain_text, :welfare, :day_off, :recruiter, :created_at, :updated_at
json.url clients_company_url(clients_company, format: :json)
