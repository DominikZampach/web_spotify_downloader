import os
from dotenv import load_dotenv
from services.spotify_client import SpotifyClient
from services.youtube_service import YouTubeService
from services.download_service import DownloadService

load_dotenv()

sp = SpotifyClient(os.getenv("CLIENT_ID"), os.getenv("CLIENT_SECRET"))
yt = YouTubeService()
dl = DownloadService()

def test_single_download(spotify_url):
    print(f"--- Startuji test pro: {spotify_url} ---")
    
    tracks = sp.get_tracks(spotify_url)
    if not tracks:
        print("Žádné skladby nenalezeny.")
        return
    
    song = tracks[0]
    print(f"Nalezena skladba: {song.name} od {song.artist}")

    print(f"Hledám na YouTube: {song.search_query}...")
    yt_url = yt.get_video_url(song.search_query)
    
    if yt_url:
        print(f"Nalezeno video: {yt_url}")
        
        print("Stahuji a převádím na MP3...")
        success = dl.download_song(yt_url, "test_folder", song)
        
        if success:
            print("HOTOVO! Koukni do složky backend/downloads/test_folder")
        else:
            print("Chyba při stahování.")
    else:
        print("Nepodařilo se najít video na YouTube.")

if __name__ == "__main__":
    test_single_download("https://open.spotify.com/track/7v26hAmRxygMsg2SYKibzF?si=d9b808294acf42a0")