```ruby
  def params
    params ||= ActionController::Parameters.new
    payload = {
      _jsonapi: {
        data: {
          type: 'loans_application',
          attributes: {
            type_work: '',
            monthly_salary: '',
            home_allowance: '',
            transport_allowance: '',
            additional_income: '',
            bank_name: '',
            monthly_obligations: '',
            num_months_remaining: '',
            unit_availability: '',
            downpayment: '',
            downpayment_amount: '',
            nearest_city: '',
            unit_id: '',
            manually_unit_id: '',
            is_have_building_permit: '',
            is_start_building: '',
            permit_id: '',
            region: '',
            cit: '',
          }
        }
      }
    }
    params = params.merge(payload)
  end
```