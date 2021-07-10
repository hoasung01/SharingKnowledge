1. One To Many
```python
class Article(Base):
    __tablename__ = 'articles'
    id = Column(Integer, primary_key=True)
    comments = relationship("Comment")


class Comment(Base):
    __tablename__ = 'comments'
    id = Column(Integer, primary_key=True)
    article_id = Column(Integer, ForeignKey('articles.id'))
```

2. Many To One
```python
class Tire(Base):
    __tablename__ = 'tires'
    id = Column(Integer, primary_key=True)
    car_id = Column(Integer, ForeignKey('cars.id'))
    car = relationship("Car")


class Car(Base):
    __tablename__ = 'cars'
    id = Column(Integer, primary_key=True)
```

3. One To One
```python
class Person(Base):
    __tablename__ = 'people'
    id = Column(Integer, primary_key=True)
    # uselist=False, makes SQLAlchemy understand that mobile_phone will
    # hold only a single instance and not an array (multiple) of instances

    # back_populates, instructs SQLAlchemy to populate the other side of the mapping
    mobile_phone = relationship("MobilePhone", uselist=False, back_populates="person")

class MobilePhone(Base):
    __tablename__ = 'mobile_phones'
    id = Column(Integer, primary_key=True)
    person_id = Column(Integer, ForeignKey('people.id'))
    person = relationship("Person", back_populates="mobile_phone")
```

4. Many To Many
```python
# helper table to persist the association between
# instances of Student and instances of Class,  #as this wouldn't be
# possible without an extra table
students_classes_association = Table('students_classes', Base.metadata,
    Column('student_id', Integer, ForeignKey('students.id')),
    Column('class_id', Integer, ForeignKey('classes.id'))
)

class Student(Base):
    __tablename__ = 'students'
    id = Column(Integer, primary_key=True)

    # make SQLAlchemy aware of the helper table, we passed it in
    #the secondary parameter of the relationship function.
    classes = relationship("Class", secondary=students_classes_association)

class Class(Base):
    __tablename__ = 'classes'
    id = Column(Integer, primary_key=True)
```

[source](https://auth0.com/blog/sqlalchemy-orm-tutorial-for-python-developers/)
