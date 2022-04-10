import uvicorn
from fastapi import FastAPI

app = FastAPI()

@app.get("/health")
def health():
    return {"status": "ok"}

@app.get("/")
async def root():
    return {"message": "Non-prod-test"}

if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8001)