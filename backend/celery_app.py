from celery import Celery

def make_celery(app_name):
    #? redis://localhost:6379/0 je standardní adresa lokálního Redisu
    return Celery(
        app_name,
        backend='redis://localhost:6379/0',
        broker='redis://localhost:6379/0'
    )
    
celery = make_celery('spotify_downloader')