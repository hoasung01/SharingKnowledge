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

###ORM

```html
# One model
Dj> Model.objects.get(id=1)
Ra> Model.find(id: 1)  # when using a PK
Ra> Model.find_by(name: "A name")  # when using any other field

# Single record filtered collection
Dj> Model.objects.filter(name="First")
Ra> Model.where("name = First")
# Multiple record filtered collection
Dj> Model.objects.filter(name__startswith="First")
Ra> Model.where("name LIKE 'First%'")

Dj> Model.objects.all().order_by('created_at')
Ra> Model.all.order(created_at: :desc)  # or 'created_at DESC'


Dj> Model.objects.all()[5:10]
Ra> Model.all.offset(5).limit(5)
Dj> Model.objects.all().first()
Ra> Model.first  # and .second and .third, etc.
Dj> Model.objects.all().last()
Ra> Model.last


# Single array of fields
Dj> Model.objects.values_list('field', flat=True)
Ra> Model.pluck(:field)

# Multiple fields
Dj> Model.objects.values('field', 'otherfield')
Ra> Model.pluck(:field, :otherfield)  # array of arrays
Ra> Model.select(:field, :otherfield) # array of partial objects

# Query spanning relations
Dj> Model.objects.filter(other_model__id=3)
Ra> Model.joins(:other_models).where("other_models.id = 3")

Dj> Model.objects.create(field="foo", other_field="bar")
Ra> Model.create(field: "foo", other_field: "bar")

Dj> Model.objects.get(5).update(field="bar")
Ra> Model.find(5).update(field: "bar")
or, less efficiently...
Dj> m = Model.objects.get(5)
Dj> m.field = "bar"
Dj> m.save()
Ra> m = Model.find(5)
Ra> m.field = "bar"
Ra> m.save

Dj> Model.objects.get(5).delete()
Ra> Model.find(5).destroy

Dj> Model.objects.filter(field="foo").update(field="bar")
Ra> Model.where(field: "foo").update_all(field: "bar")
Dj> Model.objects.all().delete()
Ra> Model.all.destroy_all

Dj> Model.objects.count()
Ra> Model.count
Dj> Model.objects.all().aggregate(Sum("num_field"))
Ra> Model.sum(:num_field)
Dj> Model.objects.all().annotate(Max("other_model__num_field"))
Ra> Model.joins(:other_models).maximum("other_models.num_field")
```
[source](https://medium.com/@wasabigeek/from-django-to-rails-models-and-migrations-4fcbf89265a9)
[source](https://medium.com/@yeraydiazdiaz/django-rails-cheat-sheet-50adf2441913
)
