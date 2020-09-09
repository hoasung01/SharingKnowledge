[django_vs_rails](https://www.sitepoint.com/django-for-the-rails-developer/)


###Creating a New Model

1. Django Workflow

```html
- python manage.py startapp <appname>
- In the app, open the models.py file
- Define the model
- python manage.py makemigrations, which will create migration
  files automagically from the models.py definitions
- python manage.py migrate
```

2. Rails Workflow

```html
- Potentially, rails generate model <ModelName> <field>:<data_type> is enough
  if your requirements  are simple.
  This creates the following, which you could also create manually:
- model_name.rb in /models
- <timestamp>_create_model_name.rb in /db/migrate
- rails db:migrate
```

###Defining Models

```python
  # Django
  # app1/leads/models.py
  class Lead(models.Model):
      name = models.CharField(max_length=255)
      email = models.EmailField()
      phone_number = models.CharField(max_length=255, blank=True)
      lead_owner = models.ForeignKey(LeadOwner)
  # Rails
  # models/lead.rb
  class Lead < ApplicationRecord
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    belongs_to :lead_owner
  # db/migrate/2018..._create_lead.rb
  class CreateLead < ActiveRecord::Migration[5.1]
    def change
      create_table :lead do |t|
        t.string :name
        t.string :email
        t.string :phone_number, null: false
        t.references :lead_owner, foreign_key: true
      end
    end
end
```

###Updating Models

1.Django Workflow

```html
- In the app, open the models.py file
- Edit the model
- python manage.py makemigrations
  `python manage.py makemigrations --name add_use_nlp_and_design_version_into_subscription_plan`
- python manage.py migrate
```

2.Rails Workflow

```html
- rails generate migration <MigrationName> — if only adding or removing fields,
  you can prefix the migration name with Add or Remove and pass in field/type pairs
  (similar to creating a new model)
- Edit the model and migration files accordingly
```
[source](https://medium.com/@wasabigeek/from-django-to-rails-models-and-migrations-4fcbf89265a9)
