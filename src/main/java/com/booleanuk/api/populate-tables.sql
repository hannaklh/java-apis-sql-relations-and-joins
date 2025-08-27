INSERT INTO directors (name, country) VALUES
  ('Stanley Kubrick','USA'),
  ('George Lucas','USA'),
  ('Robert Mulligan','USA'),
  ('James Cameron','Canada'),
  ('David Lean','UK'),
  ('Anthony Mann','USA'),
  ('Theodoros Angelopoulos','Greece'),
  ('Paul Verhoeven','Netherlands'),
  ('Krzysztof Kieslowski','Poland'),
  ('Jean-Paul Rappeneau','France')

  INSERT INTO stars (name, date_of_birth) VALUES
    ('Keir Dullea','1936-05-30'),
    ('Mark Hamill','1951-09-25'),
    ('Gregory Peck','1916-04-05'),
    ('Leonardo DiCaprio','1974-11-11'),
    ('Julie Christie','1940-04-14'),
    ('Charlton Heston','1923-10-04'),
    ('Manos Katrakis','1908-08-14'),
    ('Rutger Hauer','1944-01-23'),
    ('Juliette Binoche','1964-03-09'),
    ('Gerard Depardieu','1948-12-27')

    INSERT INTO writers (name, email) VALUES
      ('Arthur C Clarke','arthur@clarke.com'),
      ('George Lucas','george@email.com'),
      ('Harper Lee','harper@lee.com'),
      ('James Cameron','james@cameron.com'),
      ('Boris Pasternak','boris@boris.com'),
      ('Frederick Frank','fred@frank.com'),
      ('Theodoros Angelopoulos','theo@angelopoulos.com'),
      ('Erik Hazelhoff Roelfzema','erik@roelfzema.com'),
      ('Krzysztof Kieslowski','email@email.com'),
      ('Edmond Rostand','edmond@rostand.com')

      INSERT INTO films (directorsId, starsId, writersId, title, genre, release_year, rating) VALUES
        (
          (SELECT id FROM directors WHERE name='Stanley Kubrick'),
          (SELECT id FROM stars     WHERE name='Keir Dullea'),
          (SELECT id FROM writers   WHERE name='Arthur C Clarke'),
          '2001: A Space Odyssey','Science Fiction',1968,10
        ),
        (
          (SELECT id FROM directors WHERE name='George Lucas'),
          (SELECT id FROM stars     WHERE name='Mark Hamill'),
          (SELECT id FROM writers   WHERE name='George Lucas'),
          'Star Wars: A New Hope','Science Fiction',1977,7
        ),
        (
          (SELECT id FROM directors WHERE name='Robert Mulligan'),
          (SELECT id FROM stars     WHERE name='Gregory Peck'),
          (SELECT id FROM writers   WHERE name='Harper Lee'),
          'To Kill A Mockingbird','Drama',1962,10
        ),
        (
          (SELECT id FROM directors WHERE name='James Cameron'),
          (SELECT id FROM stars     WHERE name='Leonardo DiCaprio'),
          (SELECT id FROM writers   WHERE name='James Cameron'),
          'Titanic','Romance',1997,5
        ),
        (
          (SELECT id FROM directors WHERE name='David Lean'),
          (SELECT id FROM stars     WHERE name='Julie Christie'),
          (SELECT id FROM writers   WHERE name='Boris Pasternak'),
          'Dr Zhivago','Historical',1965,8
        ),
        (
          (SELECT id FROM directors WHERE name='Anthony Mann'),
          (SELECT id FROM stars     WHERE name='Charlton Heston'),
          (SELECT id FROM writers   WHERE name='Frederick Frank'),
          'El Cid','Historical',1961,6
        ),
        (
          (SELECT id FROM directors WHERE name='Theodoros Angelopoulos'),
          (SELECT id FROM stars     WHERE name='Manos Katrakis'),
          (SELECT id FROM writers   WHERE name='Theodoros Angelopoulos'),
          'Voyage to Cythera','Drama',1984,8
        ),
        (
          (SELECT id FROM directors WHERE name='Paul Verhoeven'),
          (SELECT id FROM stars     WHERE name='Rutger Hauer'),
          (SELECT id FROM writers   WHERE name='Erik Hazelhoff Roelfzema'),
          'Soldier of Orange','Thriller',1977,8
        ),
        (
          (SELECT id FROM directors WHERE name='Krzysztof Kieslowski'),
          (SELECT id FROM stars     WHERE name='Juliette Binoche'),
          (SELECT id FROM writers   WHERE name='Krzysztof Kieslowski'),
          'Three Colours: Blue','Drama',1993,8
        ),
        (
          (SELECT id FROM directors WHERE name='Jean-Paul Rappeneau'),
          (SELECT id FROM stars     WHERE name='Gerard Depardieu'),
          (SELECT id FROM writers   WHERE name='Edmond Rostand'),
          'Cyrano de Bergerac','Historical',1990,9
        )