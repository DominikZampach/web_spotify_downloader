from ytmusicapi import YTMusic

class YouTubeService:
    def __init__(self):
        self.ytm = YTMusic()
        
    def get_video_url(self, search_query):
        """Najde nejlepší shodu na YouTube Music a vrátí URL"""
        try:
            search_results = self.ytm.search(search_query, filter="songs", limit=1)
            
            if not search_results:
                #? Pokud nenajdeme v songách, zkusíme obecné vyhledávání (videa)
                search_results = self.ytm.search(search_query, limit=1)

            if search_results:
                video_id = search_results[0]['videoId']
                return f"https://www.youtube.com/watch?v={video_id}"
            
            return None
        except Exception as e:
            print(f"Chyba při hledání na YT: {e}")
            return None