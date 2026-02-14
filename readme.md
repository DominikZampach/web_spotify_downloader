# Co je potřeba vždy zapnout
## API (Backend)
1. python main.py
2. celery -A tasks worker --loglevel=info --pool=solo
3. v bin/Redis zapnout redis-server.exe

