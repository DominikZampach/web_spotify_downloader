class Song:
    def __init__(self, name, artists, photo, album='Unknown'):
        #? Přidání všech artistů oddělené ;
        artists_string = f"{artists[0]['name']}"
        for i in range(len(artists)):
            if i != 0:
                artists_string += f";{artists[i]['name']}"
            
        self.name = name
        self.artist = artists_string
        self.album = album
        self.search_query = f"{artists[0]['name']} - {self.name}"
        self.photo = photo

    def to_dict(self):
        """Převede objekt na slovník pro JSON serializaci"""
        return {
            'name': self.name,
            'artist': self.artist,
            'album': self.album,
            'search_query': self.search_query,
            'photo': self.photo
        }