from lib.artist import Artist

class ArtistRepository:

    # Initialise with DB connection
    def __init__(self, connection):
        self._connection = connection

    # Retrieve all artists using list comprehension
    def all(self):
        rows = self._connection.execute_query('SELECT * from artists')
        return [Artist(row['id'], row['name'], row['genre']) for row in rows]